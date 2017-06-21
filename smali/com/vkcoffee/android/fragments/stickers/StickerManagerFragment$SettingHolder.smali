.class Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$SettingHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "StickerManagerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Ljava/lang/Boolean;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# instance fields
.field final mSwitch:Landroid/widget/CompoundButton;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$SettingHolder;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    .line 274
    const v0, 0x7f030177

    invoke-direct {p0, v0, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 271
    const v0, 0x7f1000ec

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$SettingHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$SettingHolder;->mSwitch:Landroid/widget/CompoundButton;

    .line 275
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$SettingHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$SettingHolder;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 277
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "item"    # Ljava/lang/Boolean;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$SettingHolder;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 289
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$SettingHolder;->bind(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$SettingHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/Stickers;->get(Landroid/content/Context;)Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/stickers/Stickers;->setSuggestsEnabled(Z)V

    .line 281
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$SettingHolder;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    .line 285
    return-void
.end method
