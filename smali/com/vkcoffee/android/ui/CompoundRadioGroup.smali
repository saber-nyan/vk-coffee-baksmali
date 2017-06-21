.class public Lcom/vkcoffee/android/ui/CompoundRadioGroup;
.super Landroid/widget/LinearLayout;
.source "CompoundRadioGroup.java"


# instance fields
.field private mCheckables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;

.field private mListenerDelegate:Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->mCheckables:Ljava/util/List;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->mCheckedId:I

    .line 26
    new-instance v0, Lcom/vkcoffee/android/ui/CompoundRadioGroup$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/CompoundRadioGroup$1;-><init>(Lcom/vkcoffee/android/ui/CompoundRadioGroup;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->mListenerDelegate:Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->mCheckables:Ljava/util/List;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->mCheckedId:I

    .line 26
    new-instance v0, Lcom/vkcoffee/android/ui/CompoundRadioGroup$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/CompoundRadioGroup$1;-><init>(Lcom/vkcoffee/android/ui/CompoundRadioGroup;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->mListenerDelegate:Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->mCheckables:Ljava/util/List;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->mCheckedId:I

    .line 26
    new-instance v0, Lcom/vkcoffee/android/ui/CompoundRadioGroup$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/CompoundRadioGroup$1;-><init>(Lcom/vkcoffee/android/ui/CompoundRadioGroup;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->mListenerDelegate:Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;

    .line 54
    return-void
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/ui/CompoundRadioGroup;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/CompoundRadioGroup;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->mCheckedId:I

    return p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/CompoundRadioGroup;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->mCheckables:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/CompoundRadioGroup;)Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/CompoundRadioGroup;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->mChildOnCheckedChangeListener:Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;

    return-object v0
.end method

.method private check(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->mCheckedId:I

    .line 84
    iget-object v1, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->mChildOnCheckedChangeListener:Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;

    if-eqz v1, :cond_0

    .line 85
    iget-object v2, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->mChildOnCheckedChangeListener:Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;

    move-object v1, p1

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    invoke-interface {v2, p1, v1}, Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;->onCheckedChanged(Landroid/view/View;Z)V

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->mCheckables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "view":Landroid/view/View;
    move-object v1, p1

    .line 88
    check-cast v1, Landroid/widget/Checkable;

    if-ne p1, v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 90
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 59
    instance-of v0, p1, Lcom/vkcoffee/android/ui/CheckableRelativeLayout;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->mCheckables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, p1

    .line 61
    check-cast v0, Lcom/vkcoffee/android/ui/CheckableRelativeLayout;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->mListenerDelegate:Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/CheckableRelativeLayout;->setOnCheckedChangedListener(Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;)V

    move-object v0, p1

    .line 62
    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->check(Landroid/view/View;)V

    .line 66
    :cond_0
    return-void
.end method

.method public getCheckedId()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->mCheckedId:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 72
    return-void
.end method

.method public setCheckedId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 95
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "mChildOnCheckedChangeListener"    # Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/vkcoffee/android/ui/CompoundRadioGroup;->mChildOnCheckedChangeListener:Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;

    .line 76
    return-void
.end method
