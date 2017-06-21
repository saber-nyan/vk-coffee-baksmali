.class public final Lru/mail/android/mytracker/providers/CustomParamsDataProvider;
.super Lru/mail/android/mytracker/providers/AbstractFPDataProvider;
.source "CustomParamsDataProvider.java"


# instance fields
.field private volatile age:I

.field private customUserIds:[Ljava/lang/String;

.field private emails:[Ljava/lang/String;

.field private volatile gender:I

.field private icqIds:[Ljava/lang/String;

.field private volatile lang:Ljava/lang/String;

.field private volatile mrgsAppId:Ljava/lang/String;

.field private volatile mrgsDeviceId:Ljava/lang/String;

.field private volatile mrgsUserId:Ljava/lang/String;

.field private okIds:[Ljava/lang/String;

.field private vkIds:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lru/mail/android/mytracker/providers/AbstractFPDataProvider;-><init>()V

    .line 28
    iput-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->mrgsAppId:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->mrgsUserId:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->mrgsDeviceId:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->emails:[Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->okIds:[Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->vkIds:[Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->icqIds:[Ljava/lang/String;

    .line 37
    iput v1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->age:I

    .line 38
    iput v1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->gender:I

    .line 39
    iput-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->lang:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->customUserIds:[Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public collectData(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    return-void
.end method

.method public getAge()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->age:I

    return v0
.end method

.method public declared-synchronized getCustomUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->customUserIds:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->customUserIds:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->customUserIds:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCustomUserIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->customUserIds:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->emails:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->emails:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->emails:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->emails:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->gender:I

    return v0
.end method

.method public declared-synchronized getIcqId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->icqIds:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->icqIds:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->icqIds:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIcqIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->icqIds:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getMrgsAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->mrgsAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getMrgsId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->mrgsDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getMrgsUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->mrgsUserId:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getOkId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->okIds:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->okIds:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->okIds:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOkIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->okIds:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVKId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->vkIds:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->vkIds:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->vkIds:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVKIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->vkIds:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putDataToBuilder(Lru/mail/android/mytracker/builders/JSONBuilder;)V
    .locals 2
    .param p1, "destination"    # Lru/mail/android/mytracker/builders/JSONBuilder;

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->mrgsAppId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->mrgsAppId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setMrgsAppId(Ljava/lang/String;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->mrgsUserId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->mrgsUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setMrgsUserId(Ljava/lang/String;)V

    .line 251
    :cond_1
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->mrgsDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->mrgsDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setMrgsDeviceId(Ljava/lang/String;)V

    .line 253
    :cond_2
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->emails:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->emails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setEmail([Ljava/lang/String;)V

    .line 254
    :cond_3
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->okIds:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->okIds:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setOkId([Ljava/lang/String;)V

    .line 255
    :cond_4
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->vkIds:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->vkIds:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setVKId([Ljava/lang/String;)V

    .line 256
    :cond_5
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->icqIds:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->icqIds:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setIcqId([Ljava/lang/String;)V

    .line 258
    :cond_6
    iget v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->age:I

    if-ltz v0, :cond_7

    iget v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->age:I

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setAge(I)V

    .line 259
    :cond_7
    iget v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->gender:I

    if-eqz v0, :cond_8

    iget v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->gender:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    iget v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->gender:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 260
    :cond_8
    iget v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->gender:I

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setGender(I)V

    .line 262
    :cond_9
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->lang:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->lang:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setLang(Ljava/lang/String;)V

    .line 264
    :cond_a
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->customUserIds:[Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->customUserIds:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setCustomUserId([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :cond_b
    monitor-exit p0

    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putDataToMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "destination":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "mrgs_app_id"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->mrgsAppId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 228
    const-string/jumbo v0, "mrgs_user_id"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->mrgsUserId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 229
    const-string/jumbo v0, "mrgs_device_id"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->mrgsDeviceId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 232
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->emails:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "email"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->emails:[Ljava/lang/String;

    invoke-static {v1}, Lru/mail/android/mytracker/utils/ArrayUtils;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 233
    :cond_0
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->okIds:[Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ok_id"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->okIds:[Ljava/lang/String;

    invoke-static {v1}, Lru/mail/android/mytracker/utils/ArrayUtils;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 234
    :cond_1
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->vkIds:[Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "vk_id"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->vkIds:[Ljava/lang/String;

    invoke-static {v1}, Lru/mail/android/mytracker/utils/ArrayUtils;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 235
    :cond_2
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->icqIds:[Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "icq_id"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->icqIds:[Ljava/lang/String;

    invoke-static {v1}, Lru/mail/android/mytracker/utils/ArrayUtils;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    :cond_3
    iget v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->age:I

    if-ltz v0, :cond_4

    const-string/jumbo v0, "a"

    iget v1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->age:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 238
    :cond_4
    iget v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->gender:I

    if-eqz v0, :cond_5

    iget v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->gender:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    iget v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->gender:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 239
    :cond_5
    const-string/jumbo v0, "g"

    iget v1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->gender:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 241
    :cond_6
    const-string/jumbo v0, "lang"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->lang:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 243
    iget-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->customUserIds:[Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 244
    const-string/jumbo v0, "custom_user_id"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->customUserIds:[Ljava/lang/String;

    invoke-static {v1}, Lru/mail/android/mytracker/utils/ArrayUtils;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :cond_7
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAge(I)V
    .locals 0
    .param p1, "age"    # I

    .prologue
    .line 191
    iput p1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->age:I

    .line 192
    return-void
.end method

.method public declared-synchronized setCustomUserId(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 217
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->customUserIds:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCustomUserIds([Ljava/lang/String;)V
    .locals 1
    .param p1, "ids"    # [Ljava/lang/String;

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->customUserIds:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEmail(Ljava/lang/String;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 87
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->emails:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEmails([Ljava/lang/String;)V
    .locals 1
    .param p1, "emails"    # [Ljava/lang/String;

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->emails:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setGender(I)V
    .locals 0
    .param p1, "gender"    # I

    .prologue
    .line 181
    iput p1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->gender:I

    .line 182
    return-void
.end method

.method public declared-synchronized setIcqId(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 97
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->icqIds:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIcqIds([Ljava/lang/String;)V
    .locals 1
    .param p1, "ids"    # [Ljava/lang/String;

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->icqIds:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->lang:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setMrgsAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->mrgsAppId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setMrgsId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mrgsId"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->mrgsDeviceId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setMrgsUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->mrgsUserId:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public declared-synchronized setOkId(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 107
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->okIds:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOkIds([Ljava/lang/String;)V
    .locals 1
    .param p1, "ids"    # [Ljava/lang/String;

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->okIds:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVKId(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 117
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->vkIds:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVKIds([Ljava/lang/String;)V
    .locals 1
    .param p1, "ids"    # [Ljava/lang/String;

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->vkIds:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
