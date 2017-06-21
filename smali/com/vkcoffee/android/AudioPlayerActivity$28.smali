.class Lcom/vkcoffee/android/AudioPlayerActivity$28;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;->enableBroadcast(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

.field private final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$28;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iput-boolean p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$28;->val$enable:Z

    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$28;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const v1, 0x7f100190

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$28;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1089
    return-void
.end method
