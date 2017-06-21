.class Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1$1;
.super Ljava/lang/Object;
.source "CitiesAutocompleteAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;->success(Lcom/vkcoffee/android/data/VKList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;

.field final synthetic val$res:Lcom/vkcoffee/android/data/VKList;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;Lcom/vkcoffee/android/data/VKList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1$1;->this$1:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;

    iput-object p2, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1$1;->val$res:Lcom/vkcoffee/android/data/VKList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1$1;->this$1:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;

    iget-object v0, v0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v0}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->access$600(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1$1;->val$res:Lcom/vkcoffee/android/data/VKList;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1$1;->this$1:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;

    iget-object v2, v2, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v2}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->access$700(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;)Lcom/vkcoffee/android/data/database/City;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/VKList;->add(ILjava/lang/Object;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1$1;->this$1:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;

    iget-object v0, v0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;->val$q:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1$1;->this$1:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;

    iget-object v0, v0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v0}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->access$800(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1$1;->val$res:Lcom/vkcoffee/android/data/VKList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1$1;->this$1:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;

    iget-object v0, v0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    iget-object v1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1$1;->this$1:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;

    iget-object v1, v1, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v1}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->access$800(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->access$902(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;Ljava/util/List;)Ljava/util/List;

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1$1;->this$1:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;

    iget-object v0, v0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->notifyDataSetChanged()V

    .line 166
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1$1;->this$1:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;

    iget-object v0, v0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v0}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->access$1000(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1$1;->val$res:Lcom/vkcoffee/android/data/VKList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1$1;->this$1:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;

    iget-object v0, v0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    iget-object v1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1$1;->this$1:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;

    iget-object v1, v1, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v1}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->access$1000(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->access$902(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method
