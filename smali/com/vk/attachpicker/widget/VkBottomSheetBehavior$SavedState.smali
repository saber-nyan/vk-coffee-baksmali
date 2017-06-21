.class public Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "VkBottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/widget/VkBottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 674
    new-instance v0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState$1;

    invoke-direct {v0}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState$1;-><init>()V

    sput-object v0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 658
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;->state:I

    .line 661
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "state"    # I

    .prologue
    .line 664
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 665
    iput p2, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;->state:I

    .line 666
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 670
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 671
    iget v0, p0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    return-void
.end method
