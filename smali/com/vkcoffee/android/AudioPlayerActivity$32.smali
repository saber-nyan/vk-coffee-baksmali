.class Lcom/vkcoffee/android/AudioPlayerActivity$32;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;->setBuffered(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

.field private final synthetic val$progr:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$32;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iput p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$32;->val$progr:I

    .line 1128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$32;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$18(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iget v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$32;->val$progr:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 1131
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$32;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$18(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$32;->val$progr:I

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    const v0, -0x543d24

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1132
    return-void

    .line 1131
    :cond_0
    const v0, -0x19191a

    goto :goto_0
.end method
