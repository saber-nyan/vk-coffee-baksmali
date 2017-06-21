.class public Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;
.source "ChatInfoHolder.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ref"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref",
        "<",
        "Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;",
        ">;",
        "Landroid/text/TextWatcher;"
    }
.end annotation


# instance fields
.field private enable:Z

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private photo:Ljava/lang/String;

.field private title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef$Ref;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 25
    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->onClickListener:Landroid/view/View$OnClickListener;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->enable:Z

    .line 27
    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->photo:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$setPhoto$445(Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f0201c1

    invoke-virtual {p0, v0, p1, v1}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 115
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 106
    return-void
.end method

.method protected bridge synthetic bind(Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;)V
    .locals 0
    .param p1    # Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    check-cast p1, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->bind(Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;)V

    return-void
.end method

.method protected bind(Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->titleEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 37
    :cond_1
    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->photo:Ljava/lang/String;

    const v2, 0x7f0201c1

    invoke-virtual {p1, v0, v1, v2}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 38
    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->imageView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->enable:Z

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setEnabled(Landroid/view/View;Z)V

    .line 39
    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->titleEdit:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->enable:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 40
    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 41
    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->titleEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method

.method public clearImage()V
    .locals 1

    .prologue
    .line 85
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->setPhoto(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->title:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public hasChatPhoto()Z
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->photo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->photo:Ljava/lang/String;

    const-string/jumbo v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 110
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->title:Ljava/lang/CharSequence;

    .line 111
    return-void
.end method

.method public setEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->enable:Z

    .line 77
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->getHolder()Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;

    .line 78
    .local v0, "holder":Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;
    if-eqz v0, :cond_0

    .line 79
    iget-object v1, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->imageView:Landroid/widget/ImageView;

    invoke-static {v1, p1}, Lcom/vkcoffee/android/ViewUtils;->setEnabled(Landroid/view/View;Z)V

    .line 80
    iget-object v1, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 82
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->onClickListener:Landroid/view/View$OnClickListener;

    .line 69
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->getHolder()Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;

    .line 70
    .local v0, "holder":Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->imageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    :cond_0
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 2
    .param p1, "onEditorActionListener"    # Landroid/widget/TextView$OnEditorActionListener;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 60
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->getHolder()Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;

    .line 61
    .local v0, "holder":Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;
    if-eqz v0, :cond_0

    .line 62
    iget-object v1, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 64
    :cond_0
    return-void
.end method

.method public setPhoto(Ljava/lang/String;)V
    .locals 4
    .param p1, "photo"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->photo:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->getHolder()Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;

    .line 91
    .local v0, "holder":Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;
    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 93
    iget-object v1, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->imageView:Landroid/widget/ImageView;

    const v2, 0x7f0201c1

    invoke-virtual {v0, v1, p1, v2}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-static {v0, p1}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/ViewUtils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->title:Ljava/lang/CharSequence;

    .line 46
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->getHolder()Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;

    .line 47
    .local v0, "holder":Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;
    if-eqz v0, :cond_0

    .line 48
    iget-object v1, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    return-void
.end method
