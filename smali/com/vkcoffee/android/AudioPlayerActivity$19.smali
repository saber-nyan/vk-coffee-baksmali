.class Lcom/vkcoffee/android/AudioPlayerActivity$19;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;->confirmAndDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

.field private final synthetic val$file:Lcom/vkcoffee/android/AudioFile;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity;Lcom/vkcoffee/android/AudioFile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$19;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$19;->val$file:Lcom/vkcoffee/android/AudioFile;

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 703
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$19;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$19;->val$file:Lcom/vkcoffee/android/AudioFile;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$10(Lcom/vkcoffee/android/AudioPlayerActivity;Lcom/vkcoffee/android/AudioFile;Z)V

    .line 704
    return-void
.end method
