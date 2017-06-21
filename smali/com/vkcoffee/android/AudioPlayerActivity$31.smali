.class Lcom/vkcoffee/android/AudioPlayerActivity$31;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;->setPosition(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

.field private final synthetic val$ms:J

.field private final synthetic val$progr:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity;IJ)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$31;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iput p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$31;->val$progr:I

    iput-wide p3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$31;->val$ms:J

    .line 1118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x3c

    .line 1120
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$31;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$18(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iget v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$31;->val$progr:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1121
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$31;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$18(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100188

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "%d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/vkcoffee/android/AudioPlayerActivity$31;->val$ms:J

    div-long/2addr v4, v8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/vkcoffee/android/AudioPlayerActivity$31;->val$ms:J

    div-long/2addr v4, v8

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    return-void
.end method
