.class public Lcom/vkcoffee/android/fragments/SettingsDomainFragment;
.super Lcom/vkcoffee/android/fragments/VKToolbarFragment;
.source "SettingsDomainFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/SettingsDomainFragment$DelayedLoader;
    }
.end annotation


# static fields
.field private static final COLOR_ERROR:I = -0x30d8da

.field private static final COLOR_NEUTRAL:I = -0xae7e48

.field private static final COLOR_SUCCESS:I = -0xbd5fb9


# instance fields
.field private canSave:Z

.field private currentLinkText:Landroid/widget/TextView;

.field private currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

.field private delayedLoader:Ljava/lang/Runnable;

.field private domainInput:Landroid/widget/EditText;

.field private explainText:Landroid/widget/TextView;

.field private mentionSpan:Landroid/text/style/ClickableSpan;

.field private statusText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->canSave:Z

    .line 52
    new-instance v0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$1;-><init>(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->mentionSpan:Landroid/text/style/ClickableSpan;

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->currentLinkText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->updateStatusTextVisibility()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->checkDomain()V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->delayedLoader:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SettingsDomainFragment;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->delayedLoader:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->domainInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    return-object v0
.end method

.method static synthetic access$502(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;Lcom/vkcoffee/android/api/VKAPIRequest;)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SettingsDomainFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/api/VKAPIRequest;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    return-object p1
.end method

.method static synthetic access$602(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SettingsDomainFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->canSave:Z

    return p1
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SettingsDomainFragment;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->setFieldColor(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->statusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;ZLjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SettingsDomainFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->updateDomainExplanation(ZLjava/util/List;)V

    return-void
.end method

.method private checkDomain()V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->domainInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$4;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$4;-><init>(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;)V

    .line 176
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 203
    return-void
.end method

.method private save()V
    .locals 4

    .prologue
    .line 206
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->domainInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "domain":Ljava/lang/String;
    new-instance v1, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$5;

    .line 208
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$5;-><init>(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 217
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 218
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 219
    return-void
.end method

.method private setFieldColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->domainInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 159
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->statusText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    return-void
.end method

.method private updateDomainExplanation(ZLjava/util/List;)V
    .locals 10
    .param p1, "isValid"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 222
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->domainInput:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "domain":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v5, ""

    invoke-direct {v2, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 224
    .local v2, "explain":Landroid/text/SpannableStringBuilder;
    if-eqz p2, :cond_0

    .line 225
    const v5, 0x7f080496

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 226
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 227
    new-instance v3, Landroid/text/SpannableString;

    const-string/jumbo v5, ", "

    invoke-static {v5, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 228
    .local v3, "options":Landroid/text/SpannableString;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_1

    .line 229
    new-instance v5, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v6, "sans-serif-medium"

    invoke-direct {v5, v6}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v6

    invoke-virtual {v3, v5, v9, v6, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 233
    :goto_0
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 234
    const-string/jumbo v5, "\n\n"

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 236
    .end local v3    # "options":Landroid/text/SpannableString;
    :cond_0
    if-eqz p1, :cond_2

    .line 237
    const v5, 0x7f080139

    new-array v6, v7, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<font color=\'#4d6a8b\'>@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</font>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\n"

    const-string/jumbo v7, "<br/>"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    .line 238
    .local v4, "s":Landroid/text/Spannable;
    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v4, v9, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ForegroundColorSpan;

    aget-object v0, v5, v9

    .line 239
    .local v0, "colorSpan":Landroid/text/style/ForegroundColorSpan;
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->mentionSpan:Landroid/text/style/ClickableSpan;

    invoke-interface {v4, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v4, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v4, v5, v6, v7, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 240
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 241
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->currentLinkText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->currentLinkText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "http://vk.com/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    .end local v0    # "colorSpan":Landroid/text/style/ForegroundColorSpan;
    .end local v4    # "s":Landroid/text/Spannable;
    :goto_1
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->explainText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    return-void

    .line 231
    .restart local v3    # "options":Landroid/text/SpannableString;
    :cond_1
    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v6

    invoke-virtual {v3, v5, v9, v6, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 244
    .end local v3    # "options":Landroid/text/SpannableString;
    :cond_2
    const v5, 0x7f08013a

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 245
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->currentLinkText:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateStatusTextVisibility()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->domainInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "domain":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "domain"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 165
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->statusText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->updateDomainExplanation(ZLjava/util/List;)V

    move v1, v2

    .line 170
    :goto_0
    return v1

    .line 169
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->statusText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onAttach(Landroid/app/Activity;)V

    .line 73
    const v0, 0x7f08032d

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->setTitle(I)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->setHasOptionsMenu(Z)V

    .line 75
    return-void
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 97
    const v1, 0x7f030169

    invoke-virtual {p1, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1003aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->domainInput:Landroid/widget/EditText;

    .line 99
    const v1, 0x7f1003ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->statusText:Landroid/widget/TextView;

    .line 100
    const v1, 0x7f1003ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->currentLinkText:Landroid/widget/TextView;

    .line 101
    const v1, 0x7f1003ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->explainText:Landroid/widget/TextView;

    .line 102
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->explainText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 103
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->domainInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "domain"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->domainInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->domainInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 105
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->currentLinkText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "http://vk.com/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "domain"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->currentLinkText:Landroid/widget/TextView;

    new-instance v2, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$2;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$2;-><init>(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->updateStatusTextVisibility()Z

    .line 115
    const v1, -0xae7e48

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->setFieldColor(I)V

    .line 116
    const/4 v1, 0x1

    invoke-direct {p0, v1, v5}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->updateDomainExplanation(ZLjava/util/List;)V

    .line 118
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->domainInput:Landroid/widget/EditText;

    new-instance v2, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$3;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$3;-><init>(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 79
    const v1, 0x7f10044b

    const v2, 0x7f080451

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 80
    .local v0, "item":Landroid/view/MenuItem;
    const v1, 0x7f020140

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 81
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 82
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->canSave:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 83
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->canSave:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 84
    return-void

    .line 83
    :cond_0
    const/16 v1, 0x64

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f10044b

    if-ne v0, v1, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->save()V

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
