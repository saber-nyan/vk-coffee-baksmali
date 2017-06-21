.class Lcom/vkcoffee/android/AudioPlayerActivity$29;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;->setNumber(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$29;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    .line 1100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$29;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->updatePager()V

    .line 1103
    return-void
.end method
