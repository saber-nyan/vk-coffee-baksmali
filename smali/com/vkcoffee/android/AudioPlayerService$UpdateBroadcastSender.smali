.class Lcom/vkcoffee/android/AudioPlayerService$UpdateBroadcastSender;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/AudioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateBroadcastSender"
.end annotation


# instance fields
.field final f:Lcom/vkcoffee/android/AudioFile;

.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerService;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/AudioPlayerService;Lcom/vkcoffee/android/AudioFile;)V
    .locals 0
    .param p2, "f"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    .line 1873
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerService$UpdateBroadcastSender;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1874
    iput-object p2, p0, Lcom/vkcoffee/android/AudioPlayerService$UpdateBroadcastSender;->f:Lcom/vkcoffee/android/AudioFile;

    .line 1875
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1880
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService$UpdateBroadcastSender;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerService;->access$800(Lcom/vkcoffee/android/AudioPlayerService;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService$UpdateBroadcastSender;->f:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService$UpdateBroadcastSender;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkcoffee/android/AudioPlayerService;->access$800(Lcom/vkcoffee/android/AudioPlayerService;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->oid:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService$UpdateBroadcastSender;->f:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->aid:I

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService$UpdateBroadcastSender;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkcoffee/android/AudioPlayerService;->access$800(Lcom/vkcoffee/android/AudioPlayerService;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->aid:I

    if-eq v1, v2, :cond_1

    .line 1887
    :cond_0
    :goto_0
    return-void

    .line 1883
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService$UpdateBroadcastSender;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->updateBroadcast()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1884
    :catch_0
    move-exception v0

    .line 1885
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method
