.class Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/widget/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field count:I

.field current:I

.field offset:I

.field windowSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 156
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->windowSize:I

    .line 157
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->offset:I

    .line 158
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->count:I

    .line 159
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->current:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->windowSize:I

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->offset:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->count:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->current:I

    .line 171
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkcoffee/android/ui/widget/PageIndicator$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/vkcoffee/android/ui/widget/PageIndicator$1;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 156
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->windowSize:I

    .line 157
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->offset:I

    .line 158
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->count:I

    .line 159
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->current:I

    .line 163
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 175
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 176
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->windowSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->offset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->current:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    return-void
.end method
