.class public Lcom/vkcoffee/android/ui/SuggestingAutocompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "SuggestingAutocompleteTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method static synthetic access$001(Lcom/vkcoffee/android/ui/SuggestingAutocompleteTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/SuggestingAutocompleteTextView;

    .prologue
    .line 7
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    return-void
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public showDropDown()V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Lcom/vkcoffee/android/ui/SuggestingAutocompleteTextView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/SuggestingAutocompleteTextView$1;-><init>(Lcom/vkcoffee/android/ui/SuggestingAutocompleteTextView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/vkcoffee/android/ui/SuggestingAutocompleteTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    return-void
.end method
