.class Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;
.super Lcom/vkcoffee/android/BindableViewHolder;
.source "ProfileDetailsFragment.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$DisableableClickable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileDetailsViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$DisableableClickable;"
    }
.end annotation


# instance fields
.field private content:Landroid/widget/TextView;

.field private photo:Landroid/widget/ImageView;

.field private subtitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;)V
    .locals 2

    .prologue
    .line 123
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

    .line 124
    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f03014b

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/BindableViewHolder;-><init>(Landroid/content/Context;I)V

    .line 125
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1000dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->title:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->subtitle:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f10000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->content:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->photo:Landroid/widget/ImageView;

    .line 129
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->item:Ljava/lang/Object;

    check-cast v0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;)V
    .locals 4
    .param p1, "item"    # Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 133
    iget-object v0, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    :goto_0
    iget-object v0, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->content:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->parsedContent:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    :goto_1
    iget-object v0, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->subtitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->subtitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    :goto_2
    iget-object v0, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->image:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->photo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->image:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 159
    :goto_3
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    check-cast p1, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->onBind(Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;)V

    return-void
.end method

.method public onClick()V
    .locals 4

    .prologue
    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->item:Ljava/lang/Object;

    check-cast v1, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "x":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->item:Ljava/lang/Object;

    check-cast v1, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->fallbackIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 172
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->item:Ljava/lang/Object;

    check-cast v1, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->fallbackIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0802da

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
