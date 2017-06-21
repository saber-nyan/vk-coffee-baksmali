.class public Lcom/vkcoffee/android/fragments/SignupProfileFragment;
.super Lcom/vkcoffee/android/fragments/VKFragment;
.source "SignupProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/SignupProfileFragment$LinkButtonSpan;
    }
.end annotation


# static fields
.field private static final AVA_RESULT:I = 0x65


# instance fields
.field private doneFunc:Lcom/vkcoffee/android/functions/VoidF0;

.field private gender:I

.field private mPhotoBottom:F

.field private mPhotoLeft:F

.field private mPhotoRight:F

.field private mPhotoTop:F

.field private photo:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/VKFragment;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->gender:I

    .line 355
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)Lcom/vkcoffee/android/functions/VoidF0;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->doneFunc:Lcom/vkcoffee/android/functions/VoidF0;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->photo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/SignupProfileFragment;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupProfileFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    .prologue
    .line 46
    iget v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->mPhotoTop:F

    return v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    .prologue
    .line 46
    iget v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->mPhotoRight:F

    return v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    .prologue
    .line 46
    iget v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->mPhotoBottom:F

    return v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    .prologue
    .line 46
    iget v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->mPhotoLeft:F

    return v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupProfileFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/fragments/SignupProfileFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupProfileFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->startTermsFragment(Ljava/lang/String;)V

    return-void
.end method

.method private applyTermsHack(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 126
    const v6, 0x7f1003bf

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 130
    .local v5, "terms":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080509

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    .line 131
    .local v1, "s":Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v8, Landroid/text/style/URLSpan;

    invoke-interface {v1, v7, v6, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    .line 132
    .local v3, "spans":[Landroid/text/style/URLSpan;
    array-length v8, v3

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v2, v3, v6

    .line 133
    .local v2, "span":Landroid/text/style/URLSpan;
    invoke-interface {v1, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 134
    .local v4, "start":I
    invoke-interface {v1, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 135
    .local v0, "end":I
    invoke-interface {v1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 136
    new-instance v9, Lcom/vkcoffee/android/fragments/SignupProfileFragment$LinkButtonSpan;

    invoke-virtual {v2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/vkcoffee/android/fragments/SignupProfileFragment$LinkButtonSpan;-><init>(Lcom/vkcoffee/android/fragments/SignupProfileFragment;Ljava/lang/String;)V

    invoke-interface {v1, v9, v4, v0, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 132
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "end":I
    .end local v2    # "span":Landroid/text/style/URLSpan;
    .end local v4    # "start":I
    :cond_0
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method private getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 157
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    .line 160
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 161
    .local v2, "proj":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 162
    .local v7, "cursor":Landroid/database/Cursor;
    const-string/jumbo v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 163
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 164
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private startTermsFragment(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-class v1, Lcom/vkcoffee/android/fragments/WebViewFragment;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 145
    return-void
.end method

.method private updatePhoto()V
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/SignupProfileFragment$2;-><init>(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 319
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 320
    return-void
.end method


# virtual methods
.method public getFirstName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v1, 0x7f1003bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->gender:I

    return v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v1, 0x7f1003bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoBottom()F
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->mPhotoBottom:F

    return v0
.end method

.method public getPhotoLeft()F
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->mPhotoLeft:F

    return v0
.end method

.method public getPhotoRight()F
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->mPhotoRight:F

    return v0
.end method

.method public getPhotoTop()F
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->mPhotoTop:F

    return v0
.end method

.method public isFilled()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 344
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    if-nez v1, :cond_1

    move v0, v2

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v4, 0x7f1003bc

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-le v1, v3, :cond_2

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v4, 0x7f1003bd

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-le v1, v3, :cond_2

    move v0, v3

    .line 348
    .local v0, "res":I
    :goto_1
    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getGender()I

    move-result v1

    if-nez v1, :cond_0

    .line 349
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080165

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0804f9

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f08031e

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v2

    .line 350
    goto :goto_0

    .line 347
    .end local v0    # "res":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method synthetic lambda$onCreateView$187()V
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v2, 0x7f1003bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 119
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 120
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v2, 0x7f1003b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 121
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f1003bb

    const/16 v3, 0x65

    const/4 v2, 0x0

    .line 168
    if-ne p1, v3, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :cond_0
    const-string/jumbo v0, "file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->photo:Ljava/lang/String;

    .line 173
    const-string/jumbo v0, "cropLeft"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->mPhotoLeft:F

    .line 174
    const-string/jumbo v0, "cropTop"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->mPhotoTop:F

    .line 175
    const-string/jumbo v0, "cropRight"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->mPhotoRight:F

    .line 176
    const-string/jumbo v0, "cropBottom"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->mPhotoBottom:F

    .line 177
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->updatePhoto()V

    .line 179
    :cond_1
    if-ne p1, v3, :cond_2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 180
    iput-object v5, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->photo:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v1, 0x7f1003ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 186
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 64
    :sswitch_0
    const/4 v2, 0x2

    iput v2, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->gender:I

    goto :goto_0

    .line 67
    :sswitch_1
    iput v4, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->gender:I

    goto :goto_0

    .line 70
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/vkcoffee/android/ImagePickerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "allow_album"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    const-string/jumbo v2, "limit"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->photo:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 75
    const v2, 0x7f080119

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    const-string/jumbo v2, "custom"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 78
    const-string/jumbo v2, "force_thumb"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    const/16 v2, 0x65

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 62
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100376 -> :sswitch_0
        0x7f100377 -> :sswitch_1
        0x7f1003b9 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    const v5, 0x7f03016f

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    .line 88
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v6, 0x7f10006b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 89
    .local v4, "topBlock":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .local v1, "pl":I
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .local v3, "pt":I
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .local v2, "pr":I
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 90
    .local v0, "pb":I
    new-instance v6, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, -0x1

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    int-to-float v9, v5

    sget-boolean v5, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    invoke-direct {v6, v7, v8, v9, v5}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;IFZ)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 93
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v6, 0x7f100376

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v6, 0x7f100377

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v6, 0x7f1003b9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v6, 0x7f1003bd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    new-instance v6, Lcom/vkcoffee/android/fragments/SignupProfileFragment$1;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/fragments/SignupProfileFragment$1;-><init>(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 107
    iget v5, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->gender:I

    if-lez v5, :cond_0

    .line 108
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    iget v5, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->gender:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    const v5, 0x7f100377

    :goto_1
    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 111
    :cond_0
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->photo:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 112
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    const v6, 0x7f1003bb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 113
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->updatePhoto()V

    .line 115
    :cond_1
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->applyTermsHack(Landroid/view/View;)V

    .line 117
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/SignupProfileFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SignupProfileFragment;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 122
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    return-object v5

    .line 90
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 108
    :cond_3
    const v5, 0x7f100376

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    const-string/jumbo v0, "vk"

    const-string/jumbo v1, "Clear focus"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 152
    :cond_0
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKFragment;->onDestroyView()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->view:Landroid/view/View;

    .line 154
    return-void
.end method

.method public setOnDoneFunc(Lcom/vkcoffee/android/functions/VoidF0;)V
    .locals 0
    .param p1, "doneFunc"    # Lcom/vkcoffee/android/functions/VoidF0;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SignupProfileFragment;->doneFunc:Lcom/vkcoffee/android/functions/VoidF0;

    .line 58
    return-void
.end method
