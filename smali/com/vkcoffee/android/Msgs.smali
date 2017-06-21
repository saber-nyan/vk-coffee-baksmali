.class public Lcom/vkcoffee/android/Msgs;
.super Ljava/lang/Object;
.source "Msgs.java"


# static fields
.field public static in:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "KHyocc2Q7YcI1O/gsAqp/a2imI6CUxpNIVi3yCd3Bhk="

    invoke-static {v0}, Lcom/vkcoffee/android/Helper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/Msgs;->in:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "plainText"    # Ljava/lang/String;

    .prologue
    .line 58
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/vkcoffee/android/Msgs;->in:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "jG2hztD1F3BHeVBLtCds1g=="

    invoke-static {v4}, Lcom/vkcoffee/android/Helper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 59
    .local v0, "a":Ljava/security/Key;
    const-string v3, "jG2hztD1F3BHeVBLtCds1g=="

    invoke-static {v3}, Lcom/vkcoffee/android/Helper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 60
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 70
    .end local v0    # "a":Ljava/security/Key;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    :goto_0
    return-object v1

    .line 67
    :catch_0
    move-exception v3

    .line 70
    const-string v1, ":("

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "i"    # Ljava/lang/String;

    .prologue
    .line 29
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v6, Lcom/vkcoffee/android/Msgs;->in:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "jG2hztD1F3BHeVBLtCds1g=="

    invoke-static {v7}, Lcom/vkcoffee/android/Helper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 30
    .local v0, "a":Ljava/security/Key;
    const-string v6, "jG2hztD1F3BHeVBLtCds1g=="

    invoke-static {v6}, Lcom/vkcoffee/android/Helper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 32
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-static {p0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 34
    .local v2, "data":[B
    move-object v5, v2

    .line 35
    .local v5, "encryptedTextByte":[B
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 36
    invoke-virtual {v1, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 37
    .local v3, "decryptedByte":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "a":Ljava/security/Key;
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "data":[B
    .end local v3    # "decryptedByte":[B
    .end local v5    # "encryptedTextByte":[B
    :goto_0
    return-object v4

    .line 45
    :catch_0
    move-exception v6

    .line 48
    sget-object v6, Lcom/vkcoffee/android/DecrEncr;->temp:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 49
    sget-object v6, Lcom/vkcoffee/android/DecrEncr;->temp:Ljava/lang/String;

    sput-object v6, Lcom/vkcoffee/android/Msgs;->in:Ljava/lang/String;

    .line 52
    :cond_0
    const-string v6, "16WaIP1O8bRuJ5yr3c6bWiQegBEUyQnzuLEAvy66D6OX2JbAVUFSw51Twpo0OY8pZ4R6eKBdRtfcAO/p+RdAKQ=="

    invoke-static {v6}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
