.class public Lru/mail/android/mytracker/utils/EncryptionUtils;
.super Ljava/lang/Object;
.source "EncryptionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 25
    :try_start_0
    const-string/jumbo v5, "md5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 26
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 27
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 28
    .local v0, "bytes":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_0

    .line 31
    const-string/jumbo v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-byte v8, v0, v3

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 36
    .end local v0    # "bytes":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v5

    .line 34
    :catch_0
    move-exception v2

    .line 36
    .local v2, "exc":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_1
.end method
