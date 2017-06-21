.class public abstract Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;
.super Landroid/app/DialogFragment;
.source "DatabaseSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/DialogFragment;"
    }
.end annotation


# instance fields
.field private adapter:Landroid/widget/ListAdapter;

.field private callback:Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$Callback",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    .local p0, "this":Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;, "Lcom/vkcoffee/android/fragments/DatabaseSearchFragment<TT;>;"
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->adapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;)Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->callback:Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$Callback;

    return-object v0
.end method


# virtual methods
.method public abstract getAdapter()Landroid/widget/ListAdapter;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 29
    .local p0, "this":Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;, "Lcom/vkcoffee/android/fragments/DatabaseSearchFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->setStyle(II)V

    .line 31
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;, "Lcom/vkcoffee/android/fragments/DatabaseSearchFragment<TT;>;"
    const/4 v6, -0x1

    .line 34
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 36
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x31

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 38
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, "content":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 41
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 42
    .local v1, "filter":Landroid/widget/EditText;
    const v4, 0x80001

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 43
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "hint"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "hint"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 47
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48
    .local v2, "flp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    new-instance v3, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 52
    .local v3, "list":Landroid/widget/ListView;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-ge v4, v5, :cond_2

    .line 53
    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 54
    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 56
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->adapter:Landroid/widget/ListAdapter;

    .line 58
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->adapter:Landroid/widget/ListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    new-instance v4, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$1;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$1;-><init>(Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 77
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->adapter:Landroid/widget/ListAdapter;

    check-cast v4, Landroid/widget/Filterable;

    invoke-interface {v4}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v4, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$2;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$2;-><init>(Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    return-object v0
.end method

.method public setCallback(Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;, "Lcom/vkcoffee/android/fragments/DatabaseSearchFragment<TT;>;"
    .local p1, "c":Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$Callback;, "Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$Callback<TT;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;->callback:Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$Callback;

    .line 94
    return-void
.end method
