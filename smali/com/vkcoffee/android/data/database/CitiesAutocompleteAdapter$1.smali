.class Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "CitiesAutocompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->loadSearch(Ljava/lang/String;)V
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
        "Lcom/vkcoffee/android/data/database/City;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

.field final synthetic val$q:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    iput-object p2, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;->val$q:Ljava/lang/String;

    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/data/database/City;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "res":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/data/database/City;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v0}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->access$300(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1$1;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1$1;-><init>(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;Lcom/vkcoffee/android/data/VKList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 150
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method
