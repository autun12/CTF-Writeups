.class public Lcom/example/razictf_2/a5;
.super Ljava/lang/Object;
.source "a5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(I)Ljava/lang/String;
    .locals 27

    const-string v0, "="

    const-string v1, "%"

    const-string v2, "!"

    .line 9
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "a"

    const-string v4, "b"

    const-string v5, "N"

    .line 10
    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    const-string v6, "G"

    const-string v7, "2"

    .line 11
    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    .line 12
    filled-new-array {v6, v1, v0}, [Ljava/lang/String;

    move-result-object v1

    const-string v0, "A"

    const-string v6, "L"

    const-string v7, "D"

    .line 13
    filled-new-array {v0, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    const-string v0, "R"

    const-string v8, "$"

    .line 14
    filled-new-array {v0, v7, v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "C"

    const-string v9, "q"

    const-string v10, "3"

    .line 15
    filled-new-array {v0, v9, v10}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "K"

    const-string v10, "4"

    const-string v11, "("

    .line 16
    filled-new-array {v10, v0, v11}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "5"

    const-string v12, "J"

    .line 17
    filled-new-array {v11, v12, v0}, [Ljava/lang/String;

    move-result-object v11

    .line 18
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x3

    if-ge v12, v13, :cond_b

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_a

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v13, :cond_9

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v13, :cond_8

    move-object/from16 v16, v7

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v13, :cond_7

    move-object/from16 v17, v11

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v13, :cond_6

    move-object/from16 v18, v10

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v13, :cond_5

    move-object/from16 v19, v9

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v13, :cond_4

    move/from16 v20, v9

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v13, :cond_3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v13, v2, v12

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v4, v14

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v5, v15

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v1, v3

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v6, v7

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v8, v11

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v19, v10

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v18, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v17, v9

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    const-string v13, "MD5"

    .line 33
    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-object/from16 v21, v1

    .line 34
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 35
    invoke-virtual {v13}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 38
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v22, v2

    .line 39
    :try_start_2
    array-length v2, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v23, v4

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v2, :cond_1

    move/from16 v24, v2

    :try_start_3
    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v1

    .line 41
    :goto_a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v26, v5

    const/4 v5, 0x2

    if-ge v1, v5, :cond_0

    .line 42
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v5, v16

    :try_start_5
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v5

    move-object/from16 v5, v26

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_e

    :cond_0
    move-object/from16 v5, v16

    .line 43
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v16, v5

    move/from16 v2, v24

    move-object/from16 v1, v25

    move-object/from16 v5, v26

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_d

    :cond_1
    move-object/from16 v26, v5

    move-object/from16 v5, v16

    .line 45
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "b469f80f05290ed415770ea56e69a476"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v1, :cond_2

    return-object v0

    :catch_2
    move-exception v0

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_b

    :catch_5
    move-exception v0

    move-object/from16 v21, v1

    :goto_b
    move-object/from16 v22, v2

    :goto_c
    move-object/from16 v23, v4

    :goto_d
    move-object/from16 v26, v5

    :goto_e
    move-object/from16 v5, v16

    .line 50
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v16, v5

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v26

    const/4 v13, 0x3

    goto/16 :goto_8

    :cond_3
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    add-int/lit8 v9, v20, 0x1

    move-object/from16 v5, v26

    const/4 v13, 0x3

    goto/16 :goto_7

    :cond_4
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v9, v19

    move-object/from16 v5, v26

    const/4 v13, 0x3

    goto/16 :goto_6

    :cond_5
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v26, v5

    move-object/from16 v19, v9

    move-object/from16 v5, v16

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v10, v18

    move-object/from16 v5, v26

    const/4 v13, 0x3

    goto/16 :goto_5

    :cond_6
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v26, v5

    move-object/from16 v19, v9

    move-object/from16 v18, v10

    move-object/from16 v5, v16

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v11, v17

    move-object/from16 v5, v26

    const/4 v13, 0x3

    goto/16 :goto_4

    :cond_7
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v26, v5

    move-object/from16 v19, v9

    move-object/from16 v18, v10

    move-object/from16 v17, v11

    move-object/from16 v5, v16

    add-int/lit8 v3, v3, 0x1

    move-object v7, v5

    move-object/from16 v5, v26

    const/4 v13, 0x3

    goto/16 :goto_3

    :cond_8
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v26, v5

    move-object v5, v7

    move-object/from16 v19, v9

    move-object/from16 v18, v10

    move-object/from16 v17, v11

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v26

    const/4 v13, 0x3

    goto/16 :goto_2

    :cond_9
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v26, v5

    move-object v5, v7

    move-object/from16 v19, v9

    move-object/from16 v18, v10

    move-object/from16 v17, v11

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v26

    const/4 v13, 0x3

    goto/16 :goto_1

    :cond_a
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v26, v5

    move-object v5, v7

    move-object/from16 v19, v9

    move-object/from16 v18, v10

    move-object/from16 v17, v11

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v26

    goto/16 :goto_0

    :cond_b
    const-string v0, "y"

    return-object v0
.end method
