.class Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter$1;
.super Ljava/lang/Object;
.source "CitiesAutocompleteAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter$1;->this$1:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;

    iput-object p2, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter$1;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter$1;->this$1:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;

    iget-object v0, v0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->access$202(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 131
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter$1;->this$1:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;

    iget-object v0, v0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter;->this$0:Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    iget-object v1, p0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter$CitiesFilter$1;->val$query:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->access$500(Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;Ljava/lang/String;)V

    .line 132
    return-void
.end method
