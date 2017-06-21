.class public Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$GiftCategoryFragment$$Lambda$1;
.super Ljava/lang/Object;
.source "GiftCategoryFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/functions/VoidF1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GiftCategoryFragment$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)V
    .locals 0
    .param p1, "giftCategoryFragment"    # Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$GiftCategoryFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    .line 194
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1
    .param p0, "giftCategoryFragment"    # Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    .prologue
    .line 197
    new-instance v0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$GiftCategoryFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$GiftCategoryFragment$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)V

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$GiftCategoryFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    check-cast p1, Lcom/vkcoffee/android/api/models/CatalogedGift;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->sendGift(Lcom/vkcoffee/android/api/models/CatalogedGift;)V

    .line 202
    return-void
.end method
