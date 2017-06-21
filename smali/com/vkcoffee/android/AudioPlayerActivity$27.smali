.class Lcom/vkcoffee/android/AudioPlayerActivity$27;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;->updateLyrics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lcom/vkcoffee/android/api/audio/AudioGetLyrics$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

.field private final synthetic val$cur:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$27;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$27;->val$cur:Landroid/view/View;

    .line 1054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0

    .prologue
    .line 1065
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/audio/AudioGetLyrics$Result;)V
    .locals 3
    .param p1, "res"    # Lcom/vkcoffee/android/api/audio/AudioGetLyrics$Result;

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$27;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iget-object v0, v0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->lyricsID:I

    iget v1, p1, Lcom/vkcoffee/android/api/audio/AudioGetLyrics$Result;->id:I

    if-ne v0, v1, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$27;->val$cur:Landroid/view/View;

    const v1, 0x7f100196

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/api/audio/AudioGetLyrics$Result;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$27;->val$cur:Landroid/view/View;

    const v1, 0x7f100194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1059
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$27;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iget-object v0, v0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$27;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iget-object v1, v1, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->aid:I

    iget-object v2, p1, Lcom/vkcoffee/android/api/audio/AudioGetLyrics$Result;->text:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/cache/AudioCache;->saveLyrics(IILjava/lang/String;)I

    .line 1060
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$27;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->invalidateOptionsMenu()V

    .line 1062
    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/audio/AudioGetLyrics$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/AudioPlayerActivity$27;->success(Lcom/vkcoffee/android/api/audio/AudioGetLyrics$Result;)V

    return-void
.end method
