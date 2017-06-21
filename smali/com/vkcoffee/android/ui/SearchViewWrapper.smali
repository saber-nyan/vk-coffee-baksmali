.class public Lcom/vkcoffee/android/ui/SearchViewWrapper;
.super Ljava/lang/Object;
.source "SearchViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;,
        Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;
    }
.end annotation


# static fields
.field public static final CONFIRM_TIMEOUT:I = 0x190

.field public static final VOICE_RECOGNITION_RESULT:I = 0x4e20


# instance fields
.field private activity:Landroid/app/Activity;

.field private clearBtn:Landroid/view/View;

.field private collapseCalled:Z

.field private confirmRunnable:Ljava/lang/Runnable;

.field private expanded:Z

.field private focusView:Landroid/view/View;

.field private input:Landroid/widget/EditText;

.field private listener:Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;

.field private menu:Landroid/view/Menu;

.field private menuItem:Landroid/view/MenuItem;

.field private newText:Ljava/lang/String;

.field private stateListener:Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;

.field private view:Landroid/view/View;

.field private visibilities:[Z

.field private voiceBtn:Landroid/view/View;

.field private wasExpanded:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;)V
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;

    .prologue
    .line 62
    const/16 v0, 0x190

    invoke-direct {p0, p1, p2, v0}, Lcom/vkcoffee/android/ui/SearchViewWrapper;-><init>(Landroid/app/Activity;Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;I)V
    .locals 11
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "_listener"    # Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;
    .param p3, "timeout"    # I

    .prologue
    const v10, 0x7f1003d7

    const v9, 0x7f1003d6

    const v8, 0x7f0f0009

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->expanded:Z

    .line 42
    iput-boolean v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->collapseCalled:Z

    .line 43
    iput-boolean v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->wasExpanded:Z

    .line 66
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->activity:Landroid/app/Activity;

    .line 76
    iput-object p2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->listener:Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;

    .line 90
    new-instance v3, Lcom/vkcoffee/android/ui/SearchViewWrapper$1;

    invoke-direct {v3, p0, p1}, Lcom/vkcoffee/android/ui/SearchViewWrapper$1;-><init>(Lcom/vkcoffee/android/ui/SearchViewWrapper;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->view:Landroid/view/View;

    .line 97
    iget-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->view:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    invoke-direct {p0}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->isInContextOfAttachActivity()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f0c00a5

    :goto_0
    invoke-direct {v5, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f030188

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    iget-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->view:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->clearBtn:Landroid/view/View;

    .line 101
    iget-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->view:Landroid/view/View;

    const v4, 0x7f1003d8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->voiceBtn:Landroid/view/View;

    .line 102
    iget-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->clearBtn:Landroid/view/View;

    new-instance v4, Lcom/vkcoffee/android/ui/SearchViewWrapper$2;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/ui/SearchViewWrapper$2;-><init>(Lcom/vkcoffee/android/ui/SearchViewWrapper;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->voiceBtn:Landroid/view/View;

    new-instance v4, Lcom/vkcoffee/android/ui/SearchViewWrapper$3;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/ui/SearchViewWrapper$3;-><init>(Lcom/vkcoffee/android/ui/SearchViewWrapper;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-static {}, Lcom/vkcoffee/android/utils/VoiceUtils;->voiceSearchAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->voiceBtn:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->clearBtn:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 121
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->focusView:Landroid/view/View;

    .line 122
    iget-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->focusView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 123
    iget-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->focusView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 124
    iget-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->view:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->focusView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    iget-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->view:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->input:Landroid/widget/EditText;

    .line 127
    iget-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->input:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 128
    iget-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->input:Landroid/widget/EditText;

    new-instance v4, Lcom/vkcoffee/android/ui/SearchViewWrapper$4;

    invoke-direct {v4, p0, p3}, Lcom/vkcoffee/android/ui/SearchViewWrapper$4;-><init>(Lcom/vkcoffee/android/ui/SearchViewWrapper;I)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    iget-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->input:Landroid/widget/EditText;

    new-instance v4, Lcom/vkcoffee/android/ui/SearchViewWrapper$5;

    invoke-direct {v4, p0, p1}, Lcom/vkcoffee/android/ui/SearchViewWrapper$5;-><init>(Lcom/vkcoffee/android/ui/SearchViewWrapper;Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 173
    iget-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->input:Landroid/widget/EditText;

    new-instance v4, Lcom/vkcoffee/android/ui/SearchViewWrapper$6;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/ui/SearchViewWrapper$6;-><init>(Lcom/vkcoffee/android/ui/SearchViewWrapper;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 183
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_1

    .line 184
    iget-object v3, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->input:Landroid/widget/EditText;

    new-instance v4, Lcom/vkcoffee/android/ui/SearchViewWrapper$7;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/ui/SearchViewWrapper$7;-><init>(Lcom/vkcoffee/android/ui/SearchViewWrapper;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->isInContextOfAttachActivity()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 209
    .local v0, "searchClear":Landroid/widget/ImageView;
    new-instance v3, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f1003d8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 212
    .local v2, "searchVoice":Landroid/widget/ImageView;
    new-instance v3, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 215
    .local v1, "searchEditText":Landroid/widget/EditText;
    const-string/jumbo v3, "#A8AAAD"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 217
    .end local v0    # "searchClear":Landroid/widget/ImageView;
    .end local v1    # "searchEditText":Landroid/widget/EditText;
    .end local v2    # "searchVoice":Landroid/widget/ImageView;
    :cond_2
    return-void

    .line 97
    :cond_3
    const v4, 0x7f0c009e

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->clearBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->listener:Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->confirmRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vkcoffee/android/ui/SearchViewWrapper;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/SearchViewWrapper;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->confirmRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->input:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$502(Lcom/vkcoffee/android/ui/SearchViewWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/SearchViewWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->wasExpanded:Z

    return p1
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->stateListener:Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/ui/SearchViewWrapper;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->visibilities:[Z

    return-object v0
.end method

.method static synthetic access$702(Lcom/vkcoffee/android/ui/SearchViewWrapper;[Z)[Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/SearchViewWrapper;
    .param p1, "x1"    # [Z

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->visibilities:[Z

    return-object p1
.end method

.method static synthetic access$802(Lcom/vkcoffee/android/ui/SearchViewWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/SearchViewWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->collapseCalled:Z

    return p1
.end method

.method private isInContextOfAttachActivity()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/vk/attachpicker/AttachActivity;

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 336
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->setText(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->listener:Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;->onQueryChanged(Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 328
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->focusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 329
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->view:Landroid/view/View;

    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->expanded:Z

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->menu:Landroid/view/Menu;

    .line 225
    const v1, 0x7f08045a

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 226
    .local v0, "search":Landroid/view/MenuItem;
    const v1, 0x7f020024

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 227
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 228
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 229
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->expanded:Z

    if-eqz v1, :cond_0

    .line 230
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 231
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->newText:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->input:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->newText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 235
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->newText:Ljava/lang/String;

    .line 237
    :cond_1
    new-instance v1, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;

    invoke-direct {v1, p0, p1, v0}, Lcom/vkcoffee/android/ui/SearchViewWrapper$8;-><init>(Lcom/vkcoffee/android/ui/SearchViewWrapper;Landroid/view/Menu;Landroid/view/MenuItem;)V

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 282
    iput-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->menuItem:Landroid/view/MenuItem;

    .line 283
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 286
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->wasExpanded:Z

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->menuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 288
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 290
    :cond_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 297
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->menuItem:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    .line 298
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->expanded:Z

    .line 307
    :goto_0
    return-void

    .line 300
    :cond_0
    if-eqz p1, :cond_1

    .line 301
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->menuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    goto :goto_0

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->menuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    goto :goto_0
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->input:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 311
    return-void
.end method

.method public setStateListener(Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->stateListener:Lcom/vkcoffee/android/ui/SearchViewWrapper$ViewStateListener;

    .line 333
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->input:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 315
    return-void
.end method

.method public setTextAndSubmit(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->setText(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->listener:Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;

    invoke-interface {v0, p1}, Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;->onQuerySubmitted(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public submitQuery()V
    .locals 2

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->input:Landroid/widget/EditText;

    new-instance v1, Lcom/vkcoffee/android/ui/SearchViewWrapper$9;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/SearchViewWrapper$9;-><init>(Lcom/vkcoffee/android/ui/SearchViewWrapper;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 352
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper;->listener:Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;->onQuerySubmitted(Ljava/lang/String;)V

    goto :goto_0
.end method
