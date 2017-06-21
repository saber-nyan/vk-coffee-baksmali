.class public Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;
.source "PreferenceCheckBoxHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ref"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref",
        "<",
        "Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private isChecked:Z

.field private final onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private title:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton$OnCheckedChangeListener;Ljava/lang/Object;)V
    .locals 1
    .param p1, "onCheckedChangeListener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p2, "title"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;->title:Ljava/lang/Object;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;->isChecked:Z

    .line 25
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 26
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;->title:Ljava/lang/Object;

    .line 27
    return-void
.end method


# virtual methods
.method protected bridge synthetic bind(Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;)V
    .locals 0
    .param p1    # Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    check-cast p1, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;->bind(Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;)V

    return-void
.end method

.method protected bind(Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;->title:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/ViewUtils;->setText(Landroid/widget/TextView;Ljava/lang/Object;Z)V

    .line 50
    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;->aSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 51
    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;->aSwitch:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;->isChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 52
    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;->aSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "isChecked"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;->isChecked:Z

    .line 39
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;->getHolder()Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;

    .line 40
    .local v0, "holder":Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;
    if-eqz v0, :cond_0

    .line 41
    iget-object v1, v0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;->aSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 42
    iget-object v1, v0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;->aSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 43
    iget-object v1, v0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;->aSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 45
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/Object;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/Object;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;->title:Ljava/lang/Object;

    .line 31
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;->getHolder()Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;

    .line 32
    .local v0, "holder":Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;
    if-eqz v0, :cond_0

    .line 33
    iget-object v1, v0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;->textView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/vkcoffee/android/ViewUtils;->setText(Landroid/widget/TextView;Ljava/lang/Object;Z)V

    .line 35
    :cond_0
    return-void
.end method
