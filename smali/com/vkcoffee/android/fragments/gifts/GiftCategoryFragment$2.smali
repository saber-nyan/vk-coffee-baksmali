.class Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$2;
.super Lcom/vkcoffee/android/background/AsyncTask;
.source "GiftCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/background/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/vkcoffee/android/api/models/GiftCategory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    .line 125
    invoke-direct {p0}, Lcom/vkcoffee/android/background/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/vkcoffee/android/api/models/GiftCategory;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/models/GiftCategory;

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$2;->doInBackground([Ljava/lang/Void;)Lcom/vkcoffee/android/api/models/GiftCategory;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/vkcoffee/android/api/models/GiftCategory;)V
    .locals 2
    .param p1, "category"    # Lcom/vkcoffee/android/api/models/GiftCategory;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->access$3(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;Lcom/vkcoffee/android/api/models/GiftCategory;)V

    .line 132
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    iget-object v1, p1, Lcom/vkcoffee/android/api/models/GiftCategory;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->access$4(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    iget-object v1, p1, Lcom/vkcoffee/android/api/models/GiftCategory;->items:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->access$5(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;Ljava/util/List;)V

    .line 134
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/models/GiftCategory;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$2;->onPostExecute(Lcom/vkcoffee/android/api/models/GiftCategory;)V

    return-void
.end method
