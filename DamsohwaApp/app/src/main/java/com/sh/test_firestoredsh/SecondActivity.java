package com.sh.test_firestoredsh;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.QueryDocumentSnapshot;
import com.google.firebase.firestore.QuerySnapshot;

public class SecondActivity extends AppCompatActivity {
    FirebaseFirestore db = FirebaseFirestore.getInstance();
    String TAG = "asdf";
    String id;
    String state = null;
    EditText txtLogin;
    Button btnLogin;
    Button btnJoin;
    TextView tv;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);
        //doc = "suhyeon";
        final String[] Check = new String[1];
        txtLogin = findViewById(R.id.txtLogin);
        btnLogin = findViewById(R.id.btnLogin);
        //push 알림을 위한 manager와 bulder 설정
        final NotificationManager notificationManager =
                (NotificationManager)SecondActivity.this.getSystemService(SecondActivity.this.NOTIFICATION_SERVICE);
        final Notification.Builder builder = new Notification.Builder(getApplicationContext());

        // 계정등록 버튼
        btnJoin=findViewById(R.id.btnJoin);
        btnJoin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(SecondActivity.this, webview.class);
                startActivity(intent);
            }
        });

        btnLogin=findViewById(R.id.btnLogin);
        btnLogin.setOnClickListener(new View.OnClickListener() {
            @RequiresApi(api = Build.VERSION_CODES.N)
            @Override
            public void onClick(View v) {
                id = txtLogin.getText().toString();
                Log.d("id","id = "+id);
                db.collection("Damsohwa")
                        .get()
                        .addOnCompleteListener(new OnCompleteListener<QuerySnapshot>() {
                            @Override
                            public void onComplete(@NonNull Task<QuerySnapshot> task) {
                                if (task.isSuccessful()) {
                                    for (QueryDocumentSnapshot document : task.getResult()) {
//                                        Log.d(TAG, document.getId() + " => " + document.getData());
                                        if(document.get("ID").toString().equals(txtLogin.getText().toString())){
                                           state= document.getString("check");
                                            if(state!=null) {
                                            builder.setTicker("긴급알림이 있습니다!!")
                                                    .setContentTitle("담소화 알림")
                                                    .setContentText(state)
                                                    .setDefaults(Notification.DEFAULT_VIBRATE)
                                                    .setSmallIcon(R.drawable.dsh)
                                                    .setAutoCancel(true);
                                            notificationManager.notify(1, builder.build());
                                            }
                                           //tv.setText(doc);

                                        }
                                    }
                                } else {
                                    Log.w(TAG, "Error getting documents.", task.getException());
                                }
                            }
                        });
               // 로그인 성공시 다음 페이지로 넘어가자(다음페이지 만들기)
                if(id!=null){
                    Intent intent = new Intent(SecondActivity.this, webview.class);
                    intent.putExtra("id",id);
                startActivity(intent);
                  }else{
                      Log.w(TAG, "ID 불일치");
                     }
               }
            });
        }

    }
