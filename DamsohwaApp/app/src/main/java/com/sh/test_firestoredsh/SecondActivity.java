package com.sh.test_firestoredsh;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.appcompat.app.AppCompatActivity;

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
    String doc;
    EditText txtLogin;
    Button btnLogin;
    Button btnJoin;
    TextView tv;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);
        doc = "suhyeon";
        final String[] Check = new String[1];
        txtLogin = findViewById(R.id.txtLogin);
        btnLogin = findViewById(R.id.btnLogin);
        
//        db.collection("Damsohwa").document(doc).addSnapshotListener( (DocumentSnapshot, firebaseFirestoreException)->{
//            Log.d(TAG, "Start");
//            Check[0] = String.valueOf(DocumentSnapshot.get("ID"));
//
//        });

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
                db.collection("Damsohwa")
                        .get()
                        .addOnCompleteListener(new OnCompleteListener<QuerySnapshot>() {
                            @Override
                            public void onComplete(@NonNull Task<QuerySnapshot> task) {
                                if (task.isSuccessful()) {
                                    for (QueryDocumentSnapshot document : task.getResult()) {
//                                        Log.d(TAG, document.getId() + " => " + document.getData());
                                        if(document.get("ID").toString().equals(txtLogin.getText().toString())){
                                           doc= document.getId();
                                            Log.d(TAG,"ID : "+doc);
                                           //tv.setText(doc);

                                        }
                                    }
                                } else {
                                    Log.w(TAG, "Error getting documents.", task.getException());
                                }
                            }
                        });
               // 로그인 성공시 다음 페이지로 넘어가자(다음페이지 만들기)
                if(doc!=null){
                    Intent intent = new Intent(SecondActivity.this, webview.class);
                    intent.putExtra("DOC",doc);
                startActivity(intent);
                  }else{
                      Log.w(TAG, "ID 불일치");
                     }
               }

//                }

//
            });
        }
        //Firebase에 연동하여 data 받아오기

    }
