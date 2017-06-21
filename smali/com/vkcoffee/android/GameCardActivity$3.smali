.class Lcom/vkcoffee/android/GameCardActivity$3;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "GameCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/GameCardActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/vkcoffee/android/data/GameGenre;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/GameCardActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/GameCardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/GameCardActivity;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/vkcoffee/android/GameCardActivity$3;->this$0:Lcom/vkcoffee/android/GameCardActivity;

    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 213
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/GameCardActivity$3;->success(Ljava/util/ArrayList;)V

    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/GameGenre;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/GameGenre;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/GameGenre;

    .line 217
    .local v0, "gameGenre":Lcom/vkcoffee/android/data/GameGenre;
    iget v2, v0, Lcom/vkcoffee/android/data/GameGenre;->id:I

    iget-object v3, p0, Lcom/vkcoffee/android/GameCardActivity$3;->this$0:Lcom/vkcoffee/android/GameCardActivity;

    invoke-static {v3}, Lcom/vkcoffee/android/GameCardActivity;->access$400(Lcom/vkcoffee/android/GameCardActivity;)Lcom/vkcoffee/android/data/CatalogInfo;

    move-result-object v3

    iget v3, v3, Lcom/vkcoffee/android/data/CatalogInfo;->genre_id:I

    if-ne v2, v3, :cond_0

    .line 218
    iget-object v2, p0, Lcom/vkcoffee/android/GameCardActivity$3;->this$0:Lcom/vkcoffee/android/GameCardActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/GameCardActivity;->access$600(Lcom/vkcoffee/android/GameCardActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/GameCardActivity$3;->this$0:Lcom/vkcoffee/android/GameCardActivity;

    iget-object v4, v0, Lcom/vkcoffee/android/data/GameGenre;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/vkcoffee/android/GameCardActivity;->access$502(Lcom/vkcoffee/android/GameCardActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    .end local v0    # "gameGenre":Lcom/vkcoffee/android/data/GameGenre;
    :cond_1
    return-void
.end method
