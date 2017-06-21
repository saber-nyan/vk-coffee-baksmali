.class Lcom/vkcoffee/android/AudioPlayerActivity$10;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$10;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 314
    new-instance v1, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;-><init>()V

    .line 315
    .local v1, "pf":Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$10;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-virtual {v2}, Lcom/vkcoffee/android/AudioPlayerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 316
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 317
    const-string v2, "dialog"

    invoke-virtual {v1, v0, v2}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 318
    return-void
.end method
