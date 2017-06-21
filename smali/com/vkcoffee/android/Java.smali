.class public Lcom/vkcoffee/android/Java;
.super Ljava/lang/Object;
.source "Java.java"


# static fields
.field static in:Ljava/lang/String;

.field static must:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "STUPIDUSERSMUST_"

    sput-object v0, Lcom/vkcoffee/android/Java;->in:Ljava/lang/String;

    .line 13
    const-string v0, "DIE"

    sput-object v0, Lcom/vkcoffee/android/Java;->must:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "i"    # Ljava/lang/String;

    .prologue
    .line 17
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v5, Lcom/vkcoffee/android/Java;->in:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "AES"

    invoke-direct {v0, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 18
    .local v0, "a":Ljava/security/Key;
    const-string v5, "AES"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 19
    .local v1, "c":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    invoke-virtual {v1, v5, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 20
    new-instance v5, LDecoder/BASE64Decoder;

    invoke-direct {v5}, LDecoder/BASE64Decoder;-><init>()V

    invoke-virtual {v5, p0}, LDecoder/BASE64Decoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object v2

    .line 21
    .local v2, "dc":[B
    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 22
    .local v4, "v":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .end local v0    # "a":Ljava/security/Key;
    .end local v1    # "c":Ljavax/crypto/Cipher;
    .end local v2    # "dc":[B
    .end local v4    # "v":[B
    :goto_0
    return-object v5

    .line 23
    :catch_0
    move-exception v3

    .line 24
    .local v3, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    const-string v5, ""

    goto :goto_0
.end method
