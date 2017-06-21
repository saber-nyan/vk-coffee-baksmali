.class Lcom/vkcoffee/android/AudioPlayerActivity$18$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AudioPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/AudioPlayerActivity$18;

.field final synthetic val$artist:Landroid/widget/TextView;

.field final synthetic val$title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity$18;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/AudioPlayerActivity$18;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$18;

    iput-object p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18$1;->val$artist:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18$1;->val$title:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 774
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18$1;->val$artist:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 775
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18$1;->val$title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 776
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 779
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18$1;->val$artist:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$18;

    iget-object v1, v1, Lcom/vkcoffee/android/AudioPlayerActivity$18;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget-object v1, v1, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18$1;->val$title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$18$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$18;

    iget-object v1, v1, Lcom/vkcoffee/android/AudioPlayerActivity$18;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget-object v1, v1, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    return-void
.end method
