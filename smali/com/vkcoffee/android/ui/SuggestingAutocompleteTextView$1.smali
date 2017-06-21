.class Lcom/vkcoffee/android/ui/SuggestingAutocompleteTextView$1;
.super Ljava/lang/Object;
.source "SuggestingAutocompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/SuggestingAutocompleteTextView;->showDropDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/SuggestingAutocompleteTextView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/SuggestingAutocompleteTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/SuggestingAutocompleteTextView;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SuggestingAutocompleteTextView$1;->this$0:Lcom/vkcoffee/android/ui/SuggestingAutocompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SuggestingAutocompleteTextView$1;->this$0:Lcom/vkcoffee/android/ui/SuggestingAutocompleteTextView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/SuggestingAutocompleteTextView;->access$001(Lcom/vkcoffee/android/ui/SuggestingAutocompleteTextView;)V

    .line 33
    return-void
.end method
