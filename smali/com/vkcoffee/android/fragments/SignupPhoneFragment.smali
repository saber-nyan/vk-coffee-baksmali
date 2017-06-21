.class public Lcom/vkcoffee/android/fragments/SignupPhoneFragment;
.super Lcom/vkcoffee/android/fragments/VKFragment;
.source "SignupPhoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;,
        Lcom/vkcoffee/android/fragments/SignupPhoneFragment$CountriesAdapter;
    }
.end annotation


# instance fields
.field private canadianPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;",
            ">;"
        }
    .end annotation
.end field

.field private doneFunc:Lcom/vkcoffee/android/functions/VoidF0;

.field private dontUpdateField:Z

.field private ignoreSelCallback:Z

.field private selectedCountry:I

.field private showForgot:Z

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/VKFragment;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->countries:Ljava/util/ArrayList;

    .line 41
    iput v2, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->selectedCountry:I

    .line 42
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->ignoreSelCallback:Z

    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->dontUpdateField:Z

    .line 57
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "403"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "587"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "780"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "250"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "604"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "778"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "418"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "438"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "450"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "514"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "579"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "581"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "819"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "204"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "902"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "867"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "506"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "709"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "226"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "249"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "289"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "343"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "416"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "519"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "613"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "647"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "705"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "807"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "905"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "902"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "306"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "867"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->canadianPrefixes:Ljava/util/List;

    .line 62
    return-void
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->canadianPrefixes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Lcom/vkcoffee/android/functions/VoidF0;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->doneFunc:Lcom/vkcoffee/android/functions/VoidF0;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    .prologue
    .line 36
    iget v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->selectedCountry:I

    return v0
.end method

.method static synthetic access$202(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupPhoneFragment;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->selectedCountry:I

    return p1
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->ignoreSelCallback:Z

    return v0
.end method

.method static synthetic access$302(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupPhoneFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->ignoreSelCallback:Z

    return p1
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupPhoneFragment;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->setCountry(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupPhoneFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->findCountryByCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->countries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupPhoneFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->findCountryByIso(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SignupPhoneFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->dontUpdateField:Z

    return p1
.end method

.method private findCountryByCode(Ljava/lang/String;)I
    .locals 7
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 316
    const/4 v2, 0x0

    .line 317
    .local v2, "i":I
    const/4 v1, 0x0

    .line 318
    .local v1, "count":I
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->countries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;

    .line 319
    .local v0, "c":Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;
    iget-object v5, v0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->isoCode:Ljava/lang/String;

    const-string/jumbo v6, "US"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v3, v2

    .line 341
    .end local v0    # "c":Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;
    :cond_1
    :goto_1
    return v3

    .line 322
    .restart local v0    # "c":Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 323
    goto :goto_0

    .line 324
    .end local v0    # "c":Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;
    :cond_3
    const/4 v2, 0x0

    .line 325
    const-string/jumbo v4, "1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 326
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->countries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;

    .line 327
    .restart local v0    # "c":Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;
    iget-object v5, v0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 331
    .end local v0    # "c":Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;
    :cond_5
    const/4 v4, 0x1

    if-gt v1, v4, :cond_1

    if-eqz v1, :cond_1

    .line 335
    :cond_6
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->countries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;

    .line 336
    .restart local v0    # "c":Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;
    iget-object v5, v0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v3, v2

    .line 337
    goto :goto_1

    .line 339
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 340
    goto :goto_3
.end method

.method private findCountryByIso(Ljava/lang/String;)I
    .locals 4
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 305
    const/4 v1, 0x0

    .line 306
    .local v1, "i":I
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->countries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;

    .line 307
    .local v0, "c":Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;
    iget-object v3, v0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->isoCode:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    .end local v0    # "c":Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 310
    .restart local v0    # "c":Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 311
    goto :goto_0

    .line 312
    .end local v0    # "c":Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method static synthetic lambda$onCreateView$167(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # Landroid/text/Spanned;
    .param p4, "dstart"    # I
    .param p5, "dend"    # I

    .prologue
    .line 135
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[^0-9+]"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "s":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 137
    const-string/jumbo v1, "+"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_0
    return-object v0
.end method

.method static synthetic lambda$onCreateView$168(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # Landroid/text/Spanned;
    .param p4, "dstart"    # I
    .param p5, "dend"    # I

    .prologue
    .line 141
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[^0-9]"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setCountry(I)V
    .locals 5
    .param p1, "pos"    # I

    .prologue
    const v4, 0x7f1003b7

    .line 345
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->dontUpdateField:Z

    if-eqz v1, :cond_0

    .line 346
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->dontUpdateField:Z

    .line 352
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->countries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;

    .line 350
    .local v0, "c":Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method


# virtual methods
.method public getNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v2, 0x7f1003b7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v2, 0x7f1003b8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFilled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 366
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v2, 0x7f1003b7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v2, 0x7f1003b8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super/range {p0 .. p1}, Lcom/vkcoffee/android/fragments/VKFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "countries_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/vkcoffee/android/Global;->getDeviceLang()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ".txt"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 73
    .local v3, "in":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v11

    new-array v1, v11, [B

    .line 74
    .local v1, "file":[B
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    .line 75
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 76
    new-instance v11, Ljava/lang/String;

    const-string/jumbo v12, "UTF-8"

    invoke-direct {v11, v1, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "lines":[Ljava/lang/String;
    array-length v12, v6

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v5, v6, v11

    .line 78
    .local v5, "line":Ljava/lang/String;
    const-string/jumbo v13, ","

    const/4 v14, 0x4

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "info":[Ljava/lang/String;
    new-instance v0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;

    const/4 v13, 0x0

    invoke-direct {v0, v13}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;-><init>(Lcom/vkcoffee/android/fragments/SignupPhoneFragment$1;)V

    .line 80
    .local v0, "c":Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;
    const/4 v13, 0x0

    aget-object v13, v4, v13

    iput-object v13, v0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    .line 81
    const/4 v13, 0x2

    aget-object v13, v4, v13

    iput-object v13, v0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->isoCode:Ljava/lang/String;

    .line 82
    const/4 v13, 0x3

    aget-object v13, v4, v13

    iput-object v13, v0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->name:Ljava/lang/String;

    .line 83
    iget-object v13, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->countries:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "c":Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;
    .end local v1    # "file":[B
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "info":[Ljava/lang/String;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "lines":[Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 86
    .local v10, "x":Ljava/lang/Exception;
    const-string/jumbo v11, "vk"

    invoke-static {v11, v10}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .end local v10    # "x":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string/jumbo v12, "phone"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 90
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    const-string/jumbo v9, ""

    .line 91
    .local v9, "userCountry":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "simCountry":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 93
    move-object v9, v7

    .line 97
    :goto_1
    const/4 v2, 0x0

    .line 98
    .local v2, "i":I
    iget-object v11, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->countries:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;

    .line 99
    .restart local v0    # "c":Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;
    iget-object v12, v0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->isoCode:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 100
    iput v2, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->selectedCountry:I

    .line 102
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 103
    goto :goto_2

    .line 95
    .end local v0    # "c":Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;
    .end local v2    # "i":I
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 104
    .restart local v2    # "i":I
    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    const v6, 0x7f03016e

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    .line 109
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v7, 0x7f10006b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 110
    .local v5, "topBlock":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .local v1, "pl":I
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .local v3, "pt":I
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .local v2, "pr":I
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 111
    .local v0, "pb":I
    new-instance v7, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, -0x1

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    int-to-float v10, v6

    sget-boolean v6, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-direct {v7, v8, v9, v10, v6}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;IFZ)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    invoke-virtual {v5, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 114
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v7, 0x7f1003b5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 115
    .local v4, "spinner":Landroid/widget/Spinner;
    new-instance v6, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$CountriesAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$CountriesAdapter;-><init>(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;Lcom/vkcoffee/android/fragments/SignupPhoneFragment$1;)V

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 116
    new-instance v6, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$1;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$1;-><init>(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)V

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 131
    iget v6, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->selectedCountry:I

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 132
    iget v6, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->selectedCountry:I

    invoke-direct {p0, v6}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->setCountry(I)V

    .line 134
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v7, 0x7f1003b7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/text/InputFilter;

    const/4 v8, 0x0

    invoke-static {}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$$Lambda$1;->lambdaFactory$()Landroid/text/InputFilter;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 141
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v7, 0x7f1003b8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/text/InputFilter;

    const/4 v8, 0x0

    invoke-static {}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$$Lambda$2;->lambdaFactory$()Landroid/text/InputFilter;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 142
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v7, 0x7f1003b7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    new-instance v7, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$2;-><init>(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 204
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v7, 0x7f1003b8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    new-instance v7, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$3;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$3;-><init>(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 251
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v7, 0x7f1003b8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    new-instance v7, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$4;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$4;-><init>(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 260
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    new-instance v7, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$5;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$5;-><init>(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 267
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v7, 0x7f10019e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$6;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$6;-><init>(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v7, 0x7f10019e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-boolean v6, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->showForgot:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    return-object v6

    .line 111
    .end local v4    # "spinner":Landroid/widget/Spinner;
    :cond_0
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 275
    .restart local v4    # "spinner":Landroid/widget/Spinner;
    :cond_1
    const/16 v6, 0x8

    goto :goto_1
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 7
    .param p1, "_num"    # Ljava/lang/String;

    .prologue
    .line 281
    const-string/jumbo v3, ""

    .line 282
    .local v3, "num":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 283
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 284
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    .end local v0    # "c":C
    :cond_1
    const/4 v2, 0x0

    .line 289
    .local v2, "longestCode":Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->countries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;

    .line 290
    .local v0, "c":Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;
    iget-object v5, v0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 291
    if-eqz v2, :cond_3

    iget-object v5, v0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, v2, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 292
    :cond_3
    move-object v2, v0

    goto :goto_1

    .line 296
    .end local v0    # "c":Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;
    :cond_4
    if-nez v2, :cond_5

    .line 302
    :goto_2
    return-void

    .line 299
    :cond_5
    iget-object v4, v2, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 300
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v5, 0x7f1003b7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v5, 0x7f1003b8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public setOnDoneFunc(Lcom/vkcoffee/android/functions/VoidF0;)V
    .locals 0
    .param p1, "doneFunc"    # Lcom/vkcoffee/android/functions/VoidF0;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->doneFunc:Lcom/vkcoffee/android/functions/VoidF0;

    .line 66
    return-void
.end method

.method public setShowForgitButton(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->showForgot:Z

    .line 356
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->view:Landroid/view/View;

    const v1, 0x7f10019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 359
    :cond_0
    return-void

    .line 357
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
