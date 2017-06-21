.class public Lcom/vkcoffee/android/dialogs/PromptDialog;
.super Ljava/lang/Object;
.source "PromptDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/dialogs/PromptDialog$Listener;
    }
.end annotation


# instance fields
.field private final mBuilder:Landroid/app/AlertDialog$Builder;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mInput:Landroid/widget/EditText;

.field private final mInternalListener:Landroid/content/DialogInterface$OnClickListener;

.field private mListener:Lcom/vkcoffee/android/dialogs/PromptDialog$Listener;

.field private mOkButton:Landroid/widget/Button;

.field private mOkText:Ljava/lang/CharSequence;

.field private final mRoot:Landroid/view/View;

.field private mTextRequired:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "host"    # Landroid/app/Activity;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v1, Lcom/vkcoffee/android/dialogs/PromptDialog$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/dialogs/PromptDialog$1;-><init>(Lcom/vkcoffee/android/dialogs/PromptDialog;)V

    iput-object v1, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mInternalListener:Landroid/content/DialogInterface$OnClickListener;

    .line 42
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03007c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mRoot:Landroid/view/View;

    .line 44
    iget-object v1, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mRoot:Landroid/view/View;

    const v2, 0x1020009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mInput:Landroid/widget/EditText;

    .line 45
    const v1, 0x7f08031e

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mOkText:Ljava/lang/CharSequence;

    .line 46
    new-instance v0, Lcom/vkcoffee/android/dialogs/PromptDialog$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/dialogs/PromptDialog$2;-><init>(Lcom/vkcoffee/android/dialogs/PromptDialog;)V

    .line 62
    .local v0, "mEmptyChecker":Landroid/text/TextWatcher;
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/dialogs/PromptDialog;->addTextChangedListener(Landroid/text/TextWatcher;)Lcom/vkcoffee/android/dialogs/PromptDialog;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/dialogs/PromptDialog;)Lcom/vkcoffee/android/dialogs/PromptDialog$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/dialogs/PromptDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mListener:Lcom/vkcoffee/android/dialogs/PromptDialog$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/dialogs/PromptDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/dialogs/PromptDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/dialogs/PromptDialog;Landroid/text/Editable;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/dialogs/PromptDialog;
    .param p1, "x1"    # Landroid/text/Editable;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/dialogs/PromptDialog;->refreshEnabledState(Landroid/text/Editable;)V

    return-void
.end method

.method static synthetic access$302(Lcom/vkcoffee/android/dialogs/PromptDialog;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/dialogs/PromptDialog;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mOkButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/dialogs/PromptDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/dialogs/PromptDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private refreshEnabledState(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mOkButton:Landroid/widget/Button;

    .line 145
    iget-boolean v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mTextRequired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mOkButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mOkButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 148
    :cond_0
    return-void

    .line 146
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)Lcom/vkcoffee/android/dialogs/PromptDialog;
    .locals 1
    .param p1, "l"    # Landroid/text/TextWatcher;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    return-object p0
.end method

.method public create()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mOkText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mInternalListener:Landroid/content/DialogInterface$OnClickListener;

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800b7

    iget-object v2, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mInternalListener:Landroid/content/DialogInterface$OnClickListener;

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mDialog:Landroid/app/AlertDialog;

    .line 133
    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/vkcoffee/android/dialogs/PromptDialog$3;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/dialogs/PromptDialog$3;-><init>(Lcom/vkcoffee/android/dialogs/PromptDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 140
    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mInput:Landroid/widget/EditText;

    return-object v0
.end method

.method public requireText()Lcom/vkcoffee/android/dialogs/PromptDialog;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mTextRequired:Z

    .line 117
    return-object p0
.end method

.method public setHint(I)Lcom/vkcoffee/android/dialogs/PromptDialog;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(I)V

    .line 82
    return-object p0
.end method

.method public setHint(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/dialogs/PromptDialog;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 77
    return-object p0
.end method

.method public setInputListener(Lcom/vkcoffee/android/dialogs/PromptDialog$Listener;)Lcom/vkcoffee/android/dialogs/PromptDialog;
    .locals 0
    .param p1, "l"    # Lcom/vkcoffee/android/dialogs/PromptDialog$Listener;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mListener:Lcom/vkcoffee/android/dialogs/PromptDialog$Listener;

    .line 112
    return-object p0
.end method

.method public setOkText(I)Lcom/vkcoffee/android/dialogs/PromptDialog;
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mOkText:Ljava/lang/CharSequence;

    .line 97
    return-object p0
.end method

.method public setOkText(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/dialogs/PromptDialog;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mOkText:Ljava/lang/CharSequence;

    .line 102
    return-object p0
.end method

.method public setText(I)Lcom/vkcoffee/android/dialogs/PromptDialog;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(I)V

    .line 92
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/dialogs/PromptDialog;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    return-object p0
.end method

.method public setTitle(I)Lcom/vkcoffee/android/dialogs/PromptDialog;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 72
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/dialogs/PromptDialog;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/dialogs/PromptDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 67
    return-object p0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/vkcoffee/android/dialogs/PromptDialog;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 122
    return-void
.end method
