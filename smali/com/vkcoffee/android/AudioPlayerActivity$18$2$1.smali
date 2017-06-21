.class Lcom/vkcoffee/android/AudioPlayerActivity$18$2$1;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity$18$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkcoffee/android/AudioPlayerActivity$18$2;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity$18$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/vkcoffee/android/AudioPlayerActivity$18$2;

    .prologue
    .line 825
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18$2$1;->this$2:Lcom/vkcoffee/android/AudioPlayerActivity$18$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18$2$1;->this$2:Lcom/vkcoffee/android/AudioPlayerActivity$18$2;

    iget-object v0, v0, Lcom/vkcoffee/android/AudioPlayerActivity$18$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$18;

    iget-object v0, v0, Lcom/vkcoffee/android/AudioPlayerActivity$18;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->forceUpdateCover()V

    .line 828
    return-void
.end method
