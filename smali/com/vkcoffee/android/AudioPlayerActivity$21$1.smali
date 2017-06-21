.class Lcom/vkcoffee/android/AudioPlayerActivity$21$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AudioPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/AudioPlayerActivity$21;

.field private final synthetic val$artist:Landroid/widget/TextView;

.field private final synthetic val$f:Lcom/vkcoffee/android/AudioFile;

.field private final synthetic val$title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity$21;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/vkcoffee/android/AudioFile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$21$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$21;

    iput-object p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$21$1;->val$artist:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$21$1;->val$title:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/vkcoffee/android/AudioPlayerActivity$21$1;->val$f:Lcom/vkcoffee/android/AudioFile;

    .line 799
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 801
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$21$1;->val$artist:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 802
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$21$1;->val$title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 803
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 806
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$21$1;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget-object v0, v0, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    sput-object v0, Lcom/vkcoffee/android/AudioPlayerActivity;->label:Ljava/lang/String;

    .line 807
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$21$1;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget-object v0, v0, Lcom/vkcoffee/android/AudioFile;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$21$1;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->duration:I

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$21$1;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/AudioInfoCoffee;->calculate(Ljava/lang/String;II)V

    .line 808
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$21$1;->val$artist:Landroid/widget/TextView;

    sget-object v1, Lcom/vkcoffee/android/AudioPlayerActivity;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$21$1;->val$title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$21$1;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget-object v1, v1, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    return-void
.end method
