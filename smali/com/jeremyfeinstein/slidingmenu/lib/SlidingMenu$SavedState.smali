.class public Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SlidingMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 977
    new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState$1;

    invoke-direct {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState$1;-><init>()V

    .line 976
    sput-object v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 985
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 960
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 961
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->mItem:I

    .line 962
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;)V
    .locals 0

    .prologue
    .line 959
    invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "item"    # I

    .prologue
    .line 955
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 956
    iput p2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->mItem:I

    .line 957
    return-void
.end method


# virtual methods
.method public getItem()I
    .locals 1

    .prologue
    .line 965
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->mItem:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 972
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 973
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->mItem:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 974
    return-void
.end method
