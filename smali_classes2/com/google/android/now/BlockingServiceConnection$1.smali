.class Lcom/google/android/now/BlockingServiceConnection$1;
.super Ljava/lang/Object;
.source "BlockingServiceConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/now/BlockingServiceConnection;->unbindServiceIfConnected(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/now/BlockingServiceConnection;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/now/BlockingServiceConnection;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/now/BlockingServiceConnection;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/now/BlockingServiceConnection$1;->this$0:Lcom/google/android/now/BlockingServiceConnection;

    iput-object p2, p0, Lcom/google/android/now/BlockingServiceConnection$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/now/BlockingServiceConnection$1;->this$0:Lcom/google/android/now/BlockingServiceConnection;

    invoke-static {v0}, Lcom/google/android/now/BlockingServiceConnection;->access$000(Lcom/google/android/now/BlockingServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/android/now/BlockingServiceConnection$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/now/BlockingServiceConnection$1;->this$0:Lcom/google/android/now/BlockingServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    const-string/jumbo v0, "BlockingServiceConnection"

    const-string/jumbo v1, "Service disconnected before unbinding"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
