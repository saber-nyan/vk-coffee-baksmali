.class public Lcom/vkcoffee/android/ui/CheckableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckableRelativeLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mCheckChangedListener:Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;

.field private mCheckedChangedListenerDelegate:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mCompoundButton:Landroid/widget/CompoundButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/ui/CheckableRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vkcoffee/android/ui/CheckableRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance v0, Lcom/vkcoffee/android/ui/CheckableRelativeLayout$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/CheckableRelativeLayout$1;-><init>(Lcom/vkcoffee/android/ui/CheckableRelativeLayout;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CheckableRelativeLayout;->mCheckedChangedListenerDelegate:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/CheckableRelativeLayout;)Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/CheckableRelativeLayout;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CheckableRelativeLayout;->mCheckChangedListener:Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;

    return-object v0
.end method


# virtual methods
.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CheckableRelativeLayout;->mCompoundButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 44
    const v0, 0x1020001

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/CheckableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CheckableRelativeLayout;->mCompoundButton:Landroid/widget/CompoundButton;

    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CheckableRelativeLayout;->mCompoundButton:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/CheckableRelativeLayout;->mCheckedChangedListenerDelegate:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 46
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 73
    .local v0, "action":I
    if-eqz v0, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_1

    .line 74
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/CheckableRelativeLayout;->mCompoundButton:Landroid/widget/CompoundButton;

    invoke-virtual {v3, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 76
    :cond_1
    if-nez v1, :cond_2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CheckableRelativeLayout;->mCompoundButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CheckableRelativeLayout;->mCompoundButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CheckableRelativeLayout;->mCheckChangedListener:Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CheckableRelativeLayout;->mCheckChangedListener:Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;->onCheckedChanged(Landroid/view/View;Z)V

    .line 67
    :cond_1
    return-void
.end method

.method public setOnCheckedChangedListener(Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vkcoffee/android/ui/CheckableRelativeLayout;->mCheckChangedListener:Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;

    .line 81
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CheckableRelativeLayout;->mCompoundButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    .line 51
    return-void
.end method
