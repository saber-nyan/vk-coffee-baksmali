.class final Lcom/vkcoffee/android/C2DM$1;
.super Ljava/lang/Object;
.source "C2DM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/C2DM;->start(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appVer:I

.field final synthetic val$check:Z

.field final synthetic val$tokenVer:I


# direct methods
.method constructor <init>(IIZ)V
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/vkcoffee/android/C2DM$1;->val$appVer:I

    iput p2, p0, Lcom/vkcoffee/android/C2DM$1;->val$tokenVer:I

    iput-boolean p3, p0, Lcom/vkcoffee/android/C2DM$1;->val$check:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 21
    :try_start_0
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v5, "gcm"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v5, "reg"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    .local v2, "token":Ljava/lang/String;
    const/4 v1, 0x0

    .line 23
    .local v1, "reg":Z
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/vkcoffee/android/C2DM$1;->val$appVer:I

    iget v5, p0, Lcom/vkcoffee/android/C2DM$1;->val$tokenVer:I

    if-eq v4, v5, :cond_1

    .line 24
    :cond_0
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    .line 25
    .local v0, "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "841415684880"

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v5, "gcm"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "reg"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "version"

    iget v6, p0, Lcom/vkcoffee/android/C2DM$1;->val$appVer:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 27
    const/4 v1, 0x1

    .line 30
    .end local v0    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    :cond_1
    if-nez v1, :cond_2

    iget-boolean v4, p0, Lcom/vkcoffee/android/C2DM$1;->val$check:Z

    if-nez v4, :cond_3

    .line 31
    :cond_2
    const-string/jumbo v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GCM register ok, id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v4, Lcom/vkcoffee/android/api/account/C2DMRegisterDevice;

    invoke-direct {v4, v2}, Lcom/vkcoffee/android/api/account/C2DMRegisterDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/vkcoffee/android/api/account/C2DMRegisterDevice;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v1    # "reg":Z
    .end local v2    # "token":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v3

    .line 35
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "Error registering GCM"

    invoke-static {v4, v5, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
