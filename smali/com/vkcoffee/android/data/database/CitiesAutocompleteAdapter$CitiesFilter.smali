.class Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;
.super Landroid/widget/Filter;
.source "CitiesAutocompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CitiesFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;
    .param p2, "x1"    # Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$1;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;-><init>(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->access$102(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 114
    .local v0, "res":Landroid/widget/Filter$FilterResults;
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 6
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    const/4 v0, 0x0

    .line 119
    iget-object v1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v1}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->access$200(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v1}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->access$300(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v2}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->access$200(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 121
    iget-object v1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->access$202(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v1}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->access$400(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v1}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->access$400(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->cancel()V

    .line 125
    iget-object v1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->access$402(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;Lcom/vkcoffee/android/api/VKAPIRequest;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 127
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "query":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    invoke-static {v1}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->access$300(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    new-instance v3, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter$1;

    invoke-direct {v3, p0, v0}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter$1;-><init>(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->access$202(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    return-void
.end method
