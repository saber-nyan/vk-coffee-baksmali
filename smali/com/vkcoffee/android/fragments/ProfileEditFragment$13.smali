.class Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "ProfileEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileEditFragment;->doLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    .line 331
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "info"    # Landroid/os/Bundle;

    .prologue
    .line 333
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8, p1}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$19(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Landroid/os/Bundle;)V

    .line 334
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100372

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v9, "first_name"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100373

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v9, "last_name"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    const-string v9, "gender"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$8(Lcom/vkcoffee/android/fragments/ProfileEditFragment;I)V

    .line 337
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100376

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v9}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$13(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 338
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100377

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v9}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$13(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 339
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$9(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V

    .line 340
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    const-string v9, "bday"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileEditFragment;I)V

    .line 341
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    const-string v9, "bmonth"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$21(Lcom/vkcoffee/android/fragments/ProfileEditFragment;I)V

    .line 342
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    const-string v9, "byear"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$22(Lcom/vkcoffee/android/fragments/ProfileEditFragment;I)V

    .line 343
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$23(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)I

    move-result v8

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$23(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)I

    move-result v8

    const/16 v9, 0x20

    if-ge v8, v9, :cond_0

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$24(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)I

    move-result v8

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$24(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)I

    move-result v8

    const/16 v9, 0xd

    if-lt v8, v9, :cond_5

    .line 344
    :cond_0
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100378

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f080302

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 352
    :goto_2
    const-string v8, "bdate_vis"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 363
    :goto_3
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$15(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/Spinner;

    move-result-object v8

    const-string v9, "relation"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$27(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 364
    const-string v8, "relation_partner"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 365
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    const-string v8, "relation_partner"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/UserProfile;

    invoke-static {v9, v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$12(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Lcom/vkcoffee/android/UserProfile;)V

    .line 372
    :goto_4
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Z)V

    .line 373
    const-string v8, "country_id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 374
    .local v2, "countryID":I
    const/4 v4, 0x0

    .line 375
    .local v4, "found":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$4(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v8

    if-lt v5, v8, :cond_a

    .line 410
    if-eqz v4, :cond_1

    .line 411
    new-instance v1, Lcom/vkcoffee/android/data/database/Country;

    invoke-direct {v1}, Lcom/vkcoffee/android/data/database/Country;-><init>()V

    .line 412
    .local v1, "c2":Lcom/vkcoffee/android/data/database/Country;
    iput v2, v1, Lcom/vkcoffee/android/data/database/Country;->id:I

    .line 413
    const-string v8, "country_name"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/vkcoffee/android/data/database/Country;->name:Ljava/lang/String;

    .line 414
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$4(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 415
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$28(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/Spinner;

    move-result-object v8

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v9}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$4(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 419
    .end local v1    # "c2":Lcom/vkcoffee/android/data/database/Country;
    :cond_1
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$5(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/TextView;

    move-result-object v9

    if-gtz v2, :cond_12

    const/4 v8, 0x1

    :goto_6
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 420
    const-string v8, "city_id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_2

    .line 421
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$5(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/TextView;

    move-result-object v8

    const-string v9, "city_name"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    const-string v9, "city_id"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$3(Lcom/vkcoffee/android/fragments/ProfileEditFragment;I)V

    .line 424
    :cond_2
    const-string v8, "name_req_status"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 425
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100370

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 440
    :goto_7
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-virtual {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->invalidateOptionsMenu()V

    .line 441
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-virtual {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->dataLoaded()V

    .line 442
    return-void

    .line 337
    .end local v2    # "countryID":I
    .end local v4    # "found":Z
    .end local v5    # "i":I
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 338
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 346
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v9}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$23(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-virtual {v9}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0019

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$24(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "date":Ljava/lang/String;
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$25(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)I

    move-result v8

    if-lez v8, :cond_6

    .line 348
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v9}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$25(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 350
    :cond_6
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100378

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 354
    .end local v3    # "date":Ljava/lang/String;
    :pswitch_0
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$26(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/Spinner;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3

    .line 357
    :pswitch_1
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$26(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/Spinner;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3

    .line 360
    :pswitch_2
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$26(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/Spinner;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3

    .line 367
    :cond_7
    invoke-static {}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$10()Ljava/util/List;

    move-result-object v8

    const-string v9, "relation"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 368
    .local v6, "show":Z
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f10037b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v6, :cond_8

    const/4 v8, 0x0

    :goto_8
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f10037c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v6, :cond_9

    const/4 v8, 0x0

    :goto_9
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$12(Lcom/vkcoffee/android/fragments/ProfileEditFragment;Lcom/vkcoffee/android/UserProfile;)V

    goto/16 :goto_4

    .line 368
    :cond_8
    const/16 v8, 0x8

    goto :goto_8

    .line 369
    :cond_9
    const/16 v8, 0x8

    goto :goto_9

    .line 377
    .end local v6    # "show":Z
    .restart local v2    # "countryID":I
    .restart local v4    # "found":Z
    .restart local v5    # "i":I
    :cond_a
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$4(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/data/database/Country;

    iget v8, v8, Lcom/vkcoffee/android/data/database/Country;->id:I

    if-ne v8, v2, :cond_d

    .line 378
    const/4 v4, 0x1

    .line 379
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$28(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/Spinner;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 380
    if-nez v4, :cond_b

    .line 381
    new-instance v0, Lcom/vkcoffee/android/data/database/Country;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/database/Country;-><init>()V

    .line 382
    .local v0, "c":Lcom/vkcoffee/android/data/database/Country;
    iput v2, v0, Lcom/vkcoffee/android/data/database/Country;->id:I

    .line 383
    const-string v8, "country_name"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/vkcoffee/android/data/database/Country;->name:Ljava/lang/String;

    .line 384
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$4(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 385
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$28(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/Spinner;

    move-result-object v8

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v9}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$4(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 387
    .end local v0    # "c":Lcom/vkcoffee/android/data/database/Country;
    :cond_b
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$5(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/TextView;

    move-result-object v9

    if-gtz v2, :cond_e

    const/4 v8, 0x1

    :goto_a
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 388
    const-string v8, "city_id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_c

    .line 389
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$5(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/TextView;

    move-result-object v8

    const-string v9, "city_name"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    const-string v9, "city_id"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$3(Lcom/vkcoffee/android/fragments/ProfileEditFragment;I)V

    .line 392
    :cond_c
    const-string v8, "name_req_status"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 393
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100370

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 406
    :goto_b
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-virtual {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->invalidateOptionsMenu()V

    .line 407
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-virtual {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->dataLoaded()V

    .line 375
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    .line 387
    :cond_e
    const/4 v8, 0x0

    goto :goto_a

    .line 395
    :cond_f
    const-string v8, "name_req_status"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 396
    .local v7, "status":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_11

    .line 397
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100383

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v9, "name_req_name"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100382

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f08014b

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 399
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100384

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v8, 0x1

    if-eq v7, v8, :cond_10

    const/4 v8, 0x0

    :goto_c
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_10
    const/16 v8, 0x8

    goto :goto_c

    .line 401
    :cond_11
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100382

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    const v10, 0x7f080147

    invoke-virtual {v9, v10}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100384

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100383

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    .line 419
    .end local v7    # "status":I
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 427
    :cond_13
    const-string v8, "name_req_status"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 428
    .restart local v7    # "status":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_14

    .line 429
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100382

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    const v10, 0x7f080147

    invoke-virtual {v9, v10}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100384

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100383

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 433
    :cond_14
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100383

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v9, "name_req_name"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100382

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f08014b

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 437
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100384

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v8, 0x1

    if-eq v7, v8, :cond_15

    const/4 v8, 0x0

    :goto_d
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_15
    const/16 v8, 0x8

    goto :goto_d

    .line 352
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$13;->success(Landroid/os/Bundle;)V

    return-void
.end method
