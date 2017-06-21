.class public Lcom/vkcoffee/android/media/Vigo;
.super Landroid/telephony/PhoneStateListener;
.source "Vigo.java"


# static fields
.field private static final MAC_ADDR_LEN:I = 0xc

.field private static final MAX_WIFI_LEVEL:I = 0x5

.field private static final MAX_WIFI_POINTS:I = 0xa

.field private static final MIN_WIFI_LEVEL:I = 0x3


# instance fields
.field private cm:Landroid/net/ConnectivityManager;

.field private ctx:Landroid/content/Context;

.field private msignal:Ljava/lang/String;

.field private networkEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private networkStartTime:J

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/media/Vigo;->msignal:Ljava/lang/String;

    .line 61
    if-eqz p1, :cond_0

    .line 62
    iput-object p1, p0, Lcom/vkcoffee/android/media/Vigo;->ctx:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/media/Vigo;->ctx:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/vkcoffee/android/media/Vigo;->tm:Landroid/telephony/TelephonyManager;

    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/media/Vigo;->ctx:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/vkcoffee/android/media/Vigo;->cm:Landroid/net/ConnectivityManager;

    .line 68
    iget-object v0, p0, Lcom/vkcoffee/android/media/Vigo;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/vkcoffee/android/media/Vigo;->tm:Landroid/telephony/TelephonyManager;

    const/16 v1, 0x150

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 74
    :cond_0
    return-void
.end method

.method private getFieldValue(Landroid/telephony/SignalStrength;Ljava/lang/String;)I
    .locals 2
    .param p1, "s"    # Landroid/telephony/SignalStrength;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 78
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public collectNetworkChangesOFF()V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/media/Vigo;->networkEvents:Ljava/util/List;

    .line 263
    return-void
.end method

.method public collectNetworkChangesON(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    .line 257
    iput-wide p1, p0, Lcom/vkcoffee/android/media/Vigo;->networkStartTime:J

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/media/Vigo;->networkEvents:Ljava/util/List;

    .line 259
    return-void
.end method

.method public fillUrlParams(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;
    .locals 12
    .param p1, "bldr"    # Landroid/net/Uri$Builder;

    .prologue
    .line 196
    :try_start_0
    const-string/jumbo v7, "AES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 197
    .local v0, "aes":Ljavax/crypto/Cipher;
    const/4 v7, 0x1

    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v9, 0x10

    new-array v9, v9, [B

    fill-array-data v9, :array_0

    const-string/jumbo v10, "AES"

    invoke-direct {v8, v9, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v10, 0x10

    new-array v10, v10, [B

    invoke-direct {v9, v10}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v7, v8, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 199
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v3, "clientInfoParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v4, "networkInfoParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "os=Android/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "model="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ss="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/media/Vigo;->ctx:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0xf

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "android_id"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v7, p0, Lcom/vkcoffee/android/media/Vigo;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 210
    .local v5, "ni":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_0

    .line 211
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    .local v1, "cellId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/vkcoffee/android/media/Vigo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    .line 216
    .local v2, "cellL":Landroid/telephony/CellLocation;
    invoke-virtual {p0, v2, v1}, Lcom/vkcoffee/android/media/Vigo;->getCell(Landroid/telephony/CellLocation;Ljava/util/List;)V

    .line 218
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 219
    .local v6, "s":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "cell="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 250
    .end local v0    # "aes":Ljavax/crypto/Cipher;
    .end local v1    # "cellId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "cellL":Landroid/telephony/CellLocation;
    .end local v3    # "clientInfoParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "networkInfoParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "ni":Landroid/net/NetworkInfo;
    .end local v6    # "s":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 253
    const/4 p1, 0x0

    .end local p1    # "bldr":Landroid/net/Uri$Builder;
    :goto_2
    return-object p1

    .line 211
    .restart local v0    # "aes":Ljavax/crypto/Cipher;
    .restart local v3    # "clientInfoParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "networkInfoParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "ni":Landroid/net/NetworkInfo;
    .restart local p1    # "bldr":Landroid/net/Uri$Builder;
    :cond_1
    const-string/jumbo v7, ""

    goto :goto_0

    .line 222
    .restart local v1    # "cellId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "cellL":Landroid/telephony/CellLocation;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "operator="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/media/Vigo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mobile_type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/media/Vigo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v7, p0, Lcom/vkcoffee/android/media/Vigo;->msignal:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 226
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msignal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/media/Vigo;->msignal:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_3
    const-string/jumbo v7, "svcid"

    const-string/jumbo v8, "5d18"

    invoke-virtual {p1, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string/jumbo v8, "cid"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget v10, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 235
    invoke-static {v9}, Lcom/vkcoffee/android/api/VKAPIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string/jumbo v8, "client"

    const-string/jumbo v9, ","

    .line 236
    invoke-static {v9, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string/jumbo v8, "ne"

    const-string/jumbo v9, ","

    .line 237
    invoke-static {v9, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v9

    const/16 v10, 0xb

    invoke-static {v9, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 240
    iget-object v8, p0, Lcom/vkcoffee/android/media/Vigo;->networkEvents:Ljava/util/List;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :try_start_1
    iget-object v7, p0, Lcom/vkcoffee/android/media/Vigo;->networkEvents:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 242
    .restart local v6    # "s":Ljava/lang/String;
    const-string/jumbo v9, "nev"

    const-string/jumbo v10, "UTF-8"

    invoke-virtual {v6, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v0, v10}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v10

    const/16 v11, 0xb

    invoke-static {v10, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3

    .line 244
    .end local v6    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    :try_start_4
    iget-object v7, p0, Lcom/vkcoffee/android/media/Vigo;->networkEvents:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 197
    nop

    :array_0
    .array-data 1
        0x27t
        0x3bt
        0x6dt
        0x6ct
        0x7et
        0x73t
        0x44t
        0x34t
        0x49t
        0x76t
        0x3et
        0x55t
        0x31t
        0x31t
        0x46t
        0x7et
    .end array-data
.end method

.method public getCell(Landroid/telephony/CellLocation;Ljava/util/List;)V
    .locals 28
    .param p1, "location"    # Landroid/telephony/CellLocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CellLocation;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p2, "cellId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, -0x1

    .line 269
    .local v12, "mcc":I
    const/4 v13, -0x1

    .line 270
    .local v13, "mnci":I
    const/4 v11, -0x1

    .line 271
    .local v11, "lac":I
    const/4 v6, -0x1

    .line 273
    .local v6, "cid":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/media/Vigo;->tm:Landroid/telephony/TelephonyManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v14

    .line 274
    .local v14, "networkOperator":Ljava/lang/String;
    if-nez v14, :cond_0

    .line 275
    const-string/jumbo v14, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_0
    :try_start_1
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 280
    const/16 v19, 0x0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 281
    const/16 v19, 0x3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v13

    .line 286
    :cond_1
    :goto_0
    :try_start_2
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 287
    move-object/from16 v0, p1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v5, v0

    .line 288
    .local v5, "ci":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v11

    .line 289
    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v6

    .line 292
    .end local v5    # "ci":Landroid/telephony/gsm/GsmCellLocation;
    :cond_2
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x11

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_13

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/media/Vigo;->tm:Landroid/telephony/TelephonyManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v4

    .line 294
    .local v4, "cells":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v4, :cond_13

    .line 295
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_3
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 296
    .local v3, "cell":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 297
    instance-of v0, v3, Landroid/telephony/CellInfoGsm;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 298
    move-object v0, v3

    check-cast v0, Landroid/telephony/CellInfoGsm;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v5

    .line 299
    .local v5, "ci":Landroid/telephony/CellIdentityGsm;
    check-cast v3, Landroid/telephony/CellInfoGsm;

    .end local v3    # "cell":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v7

    .line 300
    .local v7, "cs":Landroid/telephony/CellSignalStrengthGsm;
    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v19

    const v21, 0x7fffffff

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v19

    const v21, 0x7fffffff

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v19

    const v21, 0x7fffffff

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 301
    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v12, :cond_4

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v13, :cond_4

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v11, :cond_4

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v6, :cond_4

    .line 302
    const/4 v11, -0x1

    .line 305
    :cond_4
    const-string/jumbo v19, "81:%d:%d:%X:%X"

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x3

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v18

    .line 308
    .local v18, "sf":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string/jumbo v21, "mSignalStrength"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 309
    .local v9, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v10

    .line 310
    .local v10, "isAccessible":Z
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 311
    invoke-virtual {v9, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v17

    .line 312
    .local v17, "rss":I
    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 313
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string/jumbo v21, "mBitErrorRate"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 314
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v10

    .line 315
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 316
    invoke-virtual {v9, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 317
    .local v2, "ber":I
    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 319
    const v19, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 320
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "+80:%X:%s"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v23, v19

    const/16 v24, 0x1

    const v19, 0x7fffffff

    move/from16 v0, v19

    if-eq v2, v0, :cond_7

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    :goto_2
    aput-object v19, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v18

    .line 327
    .end local v2    # "ber":I
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "isAccessible":Z
    .end local v17    # "rss":I
    :cond_5
    :goto_3
    :try_start_4
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 414
    .end local v4    # "cells":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .end local v5    # "ci":Landroid/telephony/CellIdentityGsm;
    .end local v7    # "cs":Landroid/telephony/CellSignalStrengthGsm;
    .end local v14    # "networkOperator":Ljava/lang/String;
    .end local v18    # "sf":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 416
    :cond_6
    :goto_4
    return-void

    .line 320
    .restart local v2    # "ber":I
    .restart local v4    # "cells":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .restart local v5    # "ci":Landroid/telephony/CellIdentityGsm;
    .restart local v7    # "cs":Landroid/telephony/CellSignalStrengthGsm;
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    .restart local v10    # "isAccessible":Z
    .restart local v14    # "networkOperator":Ljava/lang/String;
    .restart local v17    # "rss":I
    .restart local v18    # "sf":Ljava/lang/String;
    :cond_7
    :try_start_5
    const-string/jumbo v19, ""
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 322
    .end local v2    # "ber":I
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "isAccessible":Z
    .end local v17    # "rss":I
    :catch_1
    move-exception v8

    .line 323
    .local v8, "e":Ljava/lang/IllegalAccessException;
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    .line 324
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v8

    .line 325
    .local v8, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v8}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_3

    .line 329
    .end local v5    # "ci":Landroid/telephony/CellIdentityGsm;
    .end local v7    # "cs":Landroid/telephony/CellSignalStrengthGsm;
    .end local v8    # "e":Ljava/lang/NoSuchFieldException;
    .end local v18    # "sf":Ljava/lang/String;
    .restart local v3    # "cell":Landroid/telephony/CellInfo;
    :cond_8
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0x11

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    instance-of v0, v3, Landroid/telephony/CellInfoWcdma;

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 330
    move-object v0, v3

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v5

    .line 331
    .local v5, "ci":Landroid/telephony/CellIdentityWcdma;
    check-cast v3, Landroid/telephony/CellInfoWcdma;

    .end local v3    # "cell":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v7

    .line 332
    .local v7, "cs":Landroid/telephony/CellSignalStrengthWcdma;
    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v19

    const v21, 0x7fffffff

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v19

    const v21, 0x7fffffff

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v19

    const v21, 0x7fffffff

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 333
    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v12, :cond_9

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v13, :cond_9

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v11, :cond_9

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v6, :cond_9

    .line 334
    const/4 v11, -0x1

    .line 337
    :cond_9
    const-string/jumbo v19, "82:%d:%d:%X:%X"

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x3

    invoke-virtual {v5}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v18

    .line 340
    .restart local v18    # "sf":Ljava/lang/String;
    :try_start_7
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string/jumbo v21, "mSignalStrength"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 341
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v10

    .line 342
    .restart local v10    # "isAccessible":Z
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 343
    invoke-virtual {v9, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v17

    .line 344
    .restart local v17    # "rss":I
    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 345
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string/jumbo v21, "mBitErrorRate"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 346
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v10

    .line 347
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 348
    invoke-virtual {v9, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 349
    .restart local v2    # "ber":I
    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 351
    const v19, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    .line 352
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "+80:%X:%s"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v23, v19

    const/16 v24, 0x1

    const v19, 0x7fffffff

    move/from16 v0, v19

    if-eq v2, v0, :cond_b

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    :goto_5
    aput-object v19, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v18

    .line 360
    .end local v2    # "ber":I
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "isAccessible":Z
    .end local v17    # "rss":I
    :cond_a
    :goto_6
    :try_start_8
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    .line 352
    .restart local v2    # "ber":I
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    .restart local v10    # "isAccessible":Z
    .restart local v17    # "rss":I
    :cond_b
    :try_start_9
    const-string/jumbo v19, ""
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_5

    .line 354
    .end local v2    # "ber":I
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "isAccessible":Z
    .end local v17    # "rss":I
    :catch_3
    move-exception v8

    .line 355
    .local v8, "e":Ljava/lang/IllegalAccessException;
    :try_start_a
    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_6

    .line 356
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v8

    .line 357
    .local v8, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v8}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_6

    .line 362
    .end local v5    # "ci":Landroid/telephony/CellIdentityWcdma;
    .end local v7    # "cs":Landroid/telephony/CellSignalStrengthWcdma;
    .end local v8    # "e":Ljava/lang/NoSuchFieldException;
    .end local v18    # "sf":Ljava/lang/String;
    .restart local v3    # "cell":Landroid/telephony/CellInfo;
    :cond_c
    instance-of v0, v3, Landroid/telephony/CellInfoLte;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 363
    move-object v0, v3

    check-cast v0, Landroid/telephony/CellInfoLte;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v5

    .line 364
    .local v5, "ci":Landroid/telephony/CellIdentityLte;
    check-cast v3, Landroid/telephony/CellInfoLte;

    .end local v3    # "cell":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v7

    .line 365
    .local v7, "cs":Landroid/telephony/CellSignalStrengthLte;
    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v19

    const v21, 0x7fffffff

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v19

    const v21, 0x7fffffff

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v19

    const v21, 0x7fffffff

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 366
    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v12, :cond_d

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v13, :cond_d

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v11, :cond_d

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v6, :cond_d

    .line 367
    const/4 v11, -0x1

    .line 370
    :cond_d
    const-string/jumbo v19, "83:%d:%d:%X:%X"

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x3

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    move-result-object v18

    .line 373
    .restart local v18    # "sf":Ljava/lang/String;
    :try_start_b
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string/jumbo v21, "mSignalStrength"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 374
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v10

    .line 375
    .restart local v10    # "isAccessible":Z
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 376
    invoke-virtual {v9, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v17

    .line 377
    .restart local v17    # "rss":I
    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 378
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string/jumbo v21, "mRsrp"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 379
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v10

    .line 380
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 381
    invoke-virtual {v9, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    .line 382
    .local v15, "rsrp":I
    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 383
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string/jumbo v21, "mRsrq"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 384
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v10

    .line 385
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 386
    invoke-virtual {v9, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    .line 387
    .local v16, "rsrq":I
    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 389
    const v19, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    const v19, 0x7fffffff

    move/from16 v0, v19

    if-ne v15, v0, :cond_e

    const v19, 0x7fffffff

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_f

    .line 390
    :cond_e
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "+81:%s:%s:%s"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const v19, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    .line 391
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    :goto_7
    aput-object v19, v23, v24

    const/16 v24, 0x1

    const v19, 0x7fffffff

    move/from16 v0, v19

    if-eq v15, v0, :cond_11

    neg-int v0, v15

    move/from16 v19, v0

    .line 392
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    :goto_8
    aput-object v19, v23, v24

    const/16 v24, 0x2

    const v19, 0x7fffffff

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_12

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v19, v0

    .line 393
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    :goto_9
    aput-object v19, v23, v24

    .line 390
    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    move-result-object v18

    .line 401
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "isAccessible":Z
    .end local v15    # "rsrp":I
    .end local v16    # "rsrq":I
    .end local v17    # "rss":I
    :cond_f
    :goto_a
    :try_start_c
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_1

    .line 391
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    .restart local v10    # "isAccessible":Z
    .restart local v15    # "rsrp":I
    .restart local v16    # "rsrq":I
    .restart local v17    # "rss":I
    :cond_10
    :try_start_d
    const-string/jumbo v19, ""

    goto :goto_7

    .line 392
    :cond_11
    const-string/jumbo v19, ""

    goto :goto_8

    .line 393
    :cond_12
    const-string/jumbo v19, ""
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_9

    .line 395
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "isAccessible":Z
    .end local v15    # "rsrp":I
    .end local v16    # "rsrq":I
    .end local v17    # "rss":I
    :catch_5
    move-exception v8

    .line 396
    .local v8, "e":Ljava/lang/IllegalAccessException;
    :try_start_e
    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_a

    .line 397
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v8

    .line 398
    .local v8, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v8}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_a

    .line 409
    .end local v4    # "cells":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .end local v5    # "ci":Landroid/telephony/CellIdentityLte;
    .end local v7    # "cs":Landroid/telephony/CellSignalStrengthLte;
    .end local v8    # "e":Ljava/lang/NoSuchFieldException;
    .end local v18    # "sf":Ljava/lang/String;
    :cond_13
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v11, v0, :cond_6

    .line 410
    const-string/jumbo v19, "80:%s:%X:%X"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v14, v20, v21

    const/16 v21, 0x1

    int-to-long v0, v11

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    int-to-long v0, v6

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 411
    .restart local v18    # "sf":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_4

    .line 283
    .end local v18    # "sf":Ljava/lang/String;
    :catch_7
    move-exception v19

    goto/16 :goto_0
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 10
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    .line 421
    :try_start_0
    iget-object v6, p0, Lcom/vkcoffee/android/media/Vigo;->networkEvents:Ljava/util/List;

    if-eqz v6, :cond_0

    const/16 v6, 0x64

    iget-object v7, p0, Lcom/vkcoffee/android/media/Vigo;->networkEvents:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v4, "networkEventParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/vkcoffee/android/media/Vigo;->networkStartTime:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    long-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-long v2, v6

    .line 429
    .local v2, "eventTime":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "t="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "operator="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/media/Vigo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 433
    .local v0, "cellId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/vkcoffee/android/media/Vigo;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 434
    .local v1, "cellL":Landroid/telephony/CellLocation;
    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/media/Vigo;->getCell(Landroid/telephony/CellLocation;Ljava/util/List;)V

    .line 435
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 436
    .local v5, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cell="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 444
    .end local v0    # "cellId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "cellL":Landroid/telephony/CellLocation;
    .end local v2    # "eventTime":J
    .end local v4    # "networkEventParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "s":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 439
    .restart local v0    # "cellId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "cellL":Landroid/telephony/CellLocation;
    .restart local v2    # "eventTime":J
    .restart local v4    # "networkEventParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "msignal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/media/Vigo;->msignal:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v6, p0, Lcom/vkcoffee/android/media/Vigo;->networkEvents:Ljava/util/List;

    const-string/jumbo v7, ","

    invoke-static {v7, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 451
    :try_start_0
    iget-object v4, p0, Lcom/vkcoffee/android/media/Vigo;->networkEvents:Ljava/util/List;

    if-eqz v4, :cond_0

    const/16 v4, 0x64

    iget-object v5, p0, Lcom/vkcoffee/android/media/Vigo;->networkEvents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v2, "networkEventParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/vkcoffee/android/media/Vigo;->networkStartTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    long-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-long v0, v4

    .line 458
    .local v0, "eventTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "t="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mobile_type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v4, p0, Lcom/vkcoffee/android/media/Vigo;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 464
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_2

    .line 465
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "msignal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/media/Vigo;->msignal:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v4, p0, Lcom/vkcoffee/android/media/Vigo;->networkEvents:Ljava/util/List;

    const-string/jumbo v5, ","

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 472
    .end local v0    # "eventTime":J
    .end local v2    # "networkEventParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 465
    .restart local v0    # "eventTime":J
    .restart local v2    # "networkEventParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "ni":Landroid/net/NetworkInfo;
    :cond_3
    const-string/jumbo v4, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 14
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 87
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/vkcoffee/android/media/Vigo;->msignal:Ljava/lang/String;

    .line 90
    :try_start_0
    const-string/jumbo v5, "mGsmSignalStrength"

    invoke-direct {p0, p1, v5}, Lcom/vkcoffee/android/media/Vigo;->getFieldValue(Landroid/telephony/SignalStrength;Ljava/lang/String;)I

    move-result v1

    .line 91
    .local v1, "gsmS":I
    const-string/jumbo v5, "mGsmBitErrorRate"

    invoke-direct {p0, p1, v5}, Lcom/vkcoffee/android/media/Vigo;->getFieldValue(Landroid/telephony/SignalStrength;Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, "bitE":I
    const-string/jumbo v6, "80:%X:%s"

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v5, 0x63

    if-eq v1, v5, :cond_1

    int-to-long v10, v1

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :goto_0
    aput-object v5, v7, v8

    const/4 v8, 0x1

    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/media/Vigo;->msignal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    .end local v0    # "bitE":I
    .end local v1    # "gsmS":I
    :goto_2
    :try_start_1
    const-string/jumbo v5, "mLteSignalStrength"

    invoke-direct {p0, p1, v5}, Lcom/vkcoffee/android/media/Vigo;->getFieldValue(Landroid/telephony/SignalStrength;Ljava/lang/String;)I

    move-result v4

    .line 100
    .local v4, "lteS":I
    const-string/jumbo v5, "mLteRsrp"

    invoke-direct {p0, p1, v5}, Lcom/vkcoffee/android/media/Vigo;->getFieldValue(Landroid/telephony/SignalStrength;Ljava/lang/String;)I

    move-result v2

    .line 101
    .local v2, "lteR":I
    const-string/jumbo v5, "mLteRsrq"

    invoke-direct {p0, p1, v5}, Lcom/vkcoffee/android/media/Vigo;->getFieldValue(Landroid/telephony/SignalStrength;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 103
    .local v3, "lteRq":I
    const v5, 0x7fffffff

    if-ne v4, v5, :cond_3

    const v5, 0x7fffffff

    if-ne v2, v5, :cond_3

    const v5, 0x7fffffff

    if-ne v3, v5, :cond_3

    .line 117
    .end local v2    # "lteR":I
    .end local v3    # "lteRq":I
    .end local v4    # "lteS":I
    :cond_0
    :goto_3
    return-void

    .line 93
    .restart local v0    # "bitE":I
    .restart local v1    # "gsmS":I
    :cond_1
    :try_start_2
    const-string/jumbo v5, ""

    goto :goto_0

    :cond_2
    const-string/jumbo v5, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 107
    .end local v0    # "bitE":I
    .end local v1    # "gsmS":I
    .restart local v2    # "lteR":I
    .restart local v3    # "lteRq":I
    .restart local v4    # "lteS":I
    :cond_3
    const/16 v5, 0x63

    if-ne v4, v5, :cond_4

    const v5, 0x7fffffff

    if-ne v2, v5, :cond_4

    const v5, 0x7fffffff

    if-eq v3, v5, :cond_0

    .line 108
    :cond_4
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/vkcoffee/android/media/Vigo;->msignal:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "+81:%s:%s:%s"

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_5

    .line 109
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    :goto_4
    aput-object v5, v8, v9

    const/4 v9, 0x1

    const v5, 0x7fffffff

    if-eq v2, v5, :cond_6

    neg-int v5, v2

    .line 110
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    :goto_5
    aput-object v5, v8, v9

    const/4 v9, 0x2

    const v5, 0x7fffffff

    if-eq v3, v5, :cond_7

    neg-int v5, v3

    .line 111
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    :goto_6
    aput-object v5, v8, v9

    .line 108
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/media/Vigo;->msignal:Ljava/lang/String;

    goto :goto_3

    .line 115
    .end local v2    # "lteR":I
    .end local v3    # "lteRq":I
    .end local v4    # "lteS":I
    :catch_0
    move-exception v5

    goto :goto_3

    .line 109
    .restart local v2    # "lteR":I
    .restart local v3    # "lteRq":I
    .restart local v4    # "lteS":I
    :cond_5
    const-string/jumbo v5, ""

    goto :goto_4

    .line 110
    :cond_6
    const-string/jumbo v5, ""

    goto :goto_5

    .line 111
    :cond_7
    const-string/jumbo v5, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 95
    .end local v2    # "lteR":I
    .end local v3    # "lteRq":I
    .end local v4    # "lteS":I
    :catch_1
    move-exception v5

    goto/16 :goto_2
.end method
