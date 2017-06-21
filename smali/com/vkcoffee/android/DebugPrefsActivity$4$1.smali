.class Lcom/vkcoffee/android/DebugPrefsActivity$4$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "DebugPrefsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/DebugPrefsActivity$4;->success(Lcom/vkcoffee/android/data/VKList;)V
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
        "Lcom/vkcoffee/android/AudioPlaylist;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/DebugPrefsActivity$4;

.field final synthetic val$audios:Lcom/vkcoffee/android/data/VKList;

.field final synthetic val$lists:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/DebugPrefsActivity$4;Landroid/content/Context;Lcom/vkcoffee/android/data/VKList;Landroid/util/SparseArray;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/DebugPrefsActivity$4;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/vkcoffee/android/DebugPrefsActivity$4$1;->this$1:Lcom/vkcoffee/android/DebugPrefsActivity$4;

    iput-object p3, p0, Lcom/vkcoffee/android/DebugPrefsActivity$4$1;->val$audios:Lcom/vkcoffee/android/data/VKList;

    iput-object p4, p0, Lcom/vkcoffee/android/DebugPrefsActivity$4$1;->val$lists:Landroid/util/SparseArray;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$success$292(Lcom/vkcoffee/android/data/VKList;Landroid/util/SparseArray;Lcom/vkcoffee/android/data/VKList;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .prologue
    .line 321
    if-nez p5, :cond_0

    .line 322
    iget-object v0, p0, Lcom/vkcoffee/android/DebugPrefsActivity$4$1;->this$1:Lcom/vkcoffee/android/DebugPrefsActivity$4;

    iget-object v0, v0, Lcom/vkcoffee/android/DebugPrefsActivity$4;->this$0:Lcom/vkcoffee/android/DebugPrefsActivity;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/DebugPrefsActivity;->access$000(Lcom/vkcoffee/android/DebugPrefsActivity;Ljava/util/ArrayList;)V

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/DebugPrefsActivity$4$1;->this$1:Lcom/vkcoffee/android/DebugPrefsActivity$4;

    iget-object v1, v0, Lcom/vkcoffee/android/DebugPrefsActivity$4;->this$0:Lcom/vkcoffee/android/DebugPrefsActivity;

    add-int/lit8 v0, p5, -0x1

    invoke-virtual {p3, v0}, Lcom/vkcoffee/android/data/VKList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioPlaylist;

    iget v0, v0, Lcom/vkcoffee/android/AudioPlaylist;->id:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/DebugPrefsActivity;->access$000(Lcom/vkcoffee/android/DebugPrefsActivity;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/AudioPlaylist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "result":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/AudioPlaylist;>;"
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 314
    .local v1, "items":[Ljava/lang/String;
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[\u0412\u0441\u044f \u043c\u0443\u0437\u044b\u043a\u0430] ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/DebugPrefsActivity$4$1;->val$audios:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v4}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 315
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 316
    add-int/lit8 v3, v0, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/data/VKList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/AudioPlaylist;

    iget-object v2, v2, Lcom/vkcoffee/android/AudioPlaylist;->title:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/DebugPrefsActivity$4$1;->val$lists:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/data/VKList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/AudioPlaylist;

    iget v2, v2, Lcom/vkcoffee/android/AudioPlaylist;->id:I

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    new-instance v2, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v3, p0, Lcom/vkcoffee/android/DebugPrefsActivity$4$1;->this$1:Lcom/vkcoffee/android/DebugPrefsActivity$4;

    iget-object v3, v3, Lcom/vkcoffee/android/DebugPrefsActivity$4;->this$0:Lcom/vkcoffee/android/DebugPrefsActivity;

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "\u0427\u0442\u043e \u0431\u0443\u0434\u0435\u043c \u0441\u043a\u0430\u0447\u0438\u0432\u0430\u0442\u044c?"

    .line 319
    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/DebugPrefsActivity$4$1;->val$audios:Lcom/vkcoffee/android/data/VKList;

    iget-object v4, p0, Lcom/vkcoffee/android/DebugPrefsActivity$4$1;->val$lists:Landroid/util/SparseArray;

    invoke-static {p0, v3, v4, p1}, Lcom/vkcoffee/android/DebugPrefsActivity$4$1$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/DebugPrefsActivity$4$1;Lcom/vkcoffee/android/data/VKList;Landroid/util/SparseArray;Lcom/vkcoffee/android/data/VKList;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    .line 320
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 327
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 328
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 310
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/DebugPrefsActivity$4$1;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method
