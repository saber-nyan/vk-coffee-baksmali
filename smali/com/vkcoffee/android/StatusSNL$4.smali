.class Lcom/vkcoffee/android/StatusSNL$4;
.super Ljava/lang/Object;
.source "StatusSNL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/StatusSNL;->getPrevStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 281
    new-instance v0, Lcom/vkcoffee/android/api/execute/GetWallInfo;

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/execute/GetWallInfo;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/StatusSNL$4$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/StatusSNL$4$1;-><init>(Lcom/vkcoffee/android/StatusSNL$4;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/execute/GetWallInfo;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    .line 296
    return-void
.end method
