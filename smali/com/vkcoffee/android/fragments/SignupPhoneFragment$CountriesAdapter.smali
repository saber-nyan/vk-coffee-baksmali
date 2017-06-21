.class Lcom/vkcoffee/android/fragments/SignupPhoneFragment$CountriesAdapter;
.super Landroid/widget/BaseAdapter;
.source "SignupPhoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/SignupPhoneFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountriesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$CountriesAdapter;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;Lcom/vkcoffee/android/fragments/SignupPhoneFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/SignupPhoneFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/SignupPhoneFragment$1;

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$CountriesAdapter;-><init>(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$CountriesAdapter;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$700(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 402
    move-object v0, p2

    .line 403
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 404
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$CountriesAdapter;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030065

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 405
    const v1, 0x7f1001d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 408
    :cond_0
    const v1, 0x7f1001ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$CountriesAdapter;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$700(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    const v1, 0x7f1001cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$CountriesAdapter;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$700(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->code:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 378
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$CountriesAdapter;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$700(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 383
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 388
    move-object v0, p2

    .line 389
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 390
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$CountriesAdapter;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030065

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 391
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 392
    const v1, 0x7f1001cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 395
    :cond_0
    const v1, 0x7f1001ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$CountriesAdapter;->this$0:Lcom/vkcoffee/android/fragments/SignupPhoneFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/SignupPhoneFragment;->access$700(Lcom/vkcoffee/android/fragments/SignupPhoneFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/SignupPhoneFragment$Country;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    return-object v0
.end method
