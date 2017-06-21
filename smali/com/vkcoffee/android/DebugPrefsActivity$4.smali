.class Lcom/vkcoffee/android/DebugPrefsActivity$4;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "DebugPrefsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/DebugPrefsActivity;->downloadAudio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/data/VKList",
        "<",
        "Lcom/vkcoffee/android/AudioFile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/DebugPrefsActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/DebugPrefsActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/DebugPrefsActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/vkcoffee/android/DebugPrefsActivity$4;->this$0:Lcom/vkcoffee/android/DebugPrefsActivity;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "audios":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/AudioFile;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 300
    .local v2, "lists":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;>;"
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    .line 301
    .local v0, "f":Lcom/vkcoffee/android/AudioFile;
    iget v4, v0, Lcom/vkcoffee/android/AudioFile;->playlistID:I

    if-eqz v4, :cond_0

    .line 302
    iget v4, v0, Lcom/vkcoffee/android/AudioFile;->playlistID:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 303
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    if-nez v1, :cond_1

    .line 304
    iget v4, v0, Lcom/vkcoffee/android/AudioFile;->playlistID:I

    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    .end local v0    # "f":Lcom/vkcoffee/android/AudioFile;
    .end local v1    # "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    :cond_2
    new-instance v3, Lcom/vkcoffee/android/api/audio/AudioGetAlbums;

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/api/audio/AudioGetAlbums;-><init>(I)V

    new-instance v4, Lcom/vkcoffee/android/DebugPrefsActivity$4$1;

    iget-object v5, p0, Lcom/vkcoffee/android/DebugPrefsActivity$4;->this$0:Lcom/vkcoffee/android/DebugPrefsActivity;

    invoke-direct {v4, p0, v5, p1, v2}, Lcom/vkcoffee/android/DebugPrefsActivity$4$1;-><init>(Lcom/vkcoffee/android/DebugPrefsActivity$4;Landroid/content/Context;Lcom/vkcoffee/android/data/VKList;Landroid/util/SparseArray;)V

    .line 310
    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/api/audio/AudioGetAlbums;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/DebugPrefsActivity$4;->this$0:Lcom/vkcoffee/android/DebugPrefsActivity;

    .line 330
    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/DebugPrefsActivity$4;->this$0:Lcom/vkcoffee/android/DebugPrefsActivity;

    .line 331
    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 332
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 296
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/DebugPrefsActivity$4;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method
