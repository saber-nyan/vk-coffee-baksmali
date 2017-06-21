.class public Lcom/vkcoffee/android/data/CatalogInfo;
.super Ljava/lang/Object;
.source "CatalogInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/data/CatalogInfo$FilterType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/data/CatalogInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_GENRE_ID:I = -0x1


# instance fields
.field public final filterType:Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

.field public final genre_id:I

.field public final title:Ljava/lang/String;

.field public final titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/vkcoffee/android/data/CatalogInfo$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/CatalogInfo$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/CatalogInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/vkcoffee/android/data/CatalogInfo;->title:Ljava/lang/String;

    .line 34
    iput p1, p0, Lcom/vkcoffee/android/data/CatalogInfo;->titleRes:I

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/data/CatalogInfo;->genre_id:I

    .line 36
    iput-object v1, p0, Lcom/vkcoffee/android/data/CatalogInfo;->filterType:Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    .line 37
    return-void
.end method

.method public constructor <init>(ILcom/vkcoffee/android/data/CatalogInfo$FilterType;)V
    .locals 1
    .param p1, "titleRes"    # I
    .param p2, "filterType"    # Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/data/CatalogInfo;->title:Ljava/lang/String;

    .line 55
    iput p1, p0, Lcom/vkcoffee/android/data/CatalogInfo;->titleRes:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/data/CatalogInfo;->genre_id:I

    .line 57
    iput-object p2, p0, Lcom/vkcoffee/android/data/CatalogInfo;->filterType:Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/data/CatalogInfo;->genre_id:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/vkcoffee/android/data/CatalogInfo;->filterType:Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/CatalogInfo;->title:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/data/CatalogInfo;->titleRes:I

    .line 82
    return-void

    .line 79
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/data/CatalogInfo$FilterType;->values()[Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/vkcoffee/android/data/GameGenre;)V
    .locals 1
    .param p1, "gameGenre"    # Lcom/vkcoffee/android/data/GameGenre;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget-object v0, p1, Lcom/vkcoffee/android/data/GameGenre;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/data/CatalogInfo;->title:Ljava/lang/String;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/data/CatalogInfo;->titleRes:I

    .line 49
    iget v0, p1, Lcom/vkcoffee/android/data/GameGenre;->id:I

    iput v0, p0, Lcom/vkcoffee/android/data/CatalogInfo;->genre_id:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/data/CatalogInfo;->filterType:Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/vkcoffee/android/data/CatalogInfo;->title:Ljava/lang/String;

    .line 41
    iput v0, p0, Lcom/vkcoffee/android/data/CatalogInfo;->titleRes:I

    .line 42
    iput v0, p0, Lcom/vkcoffee/android/data/CatalogInfo;->genre_id:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/data/CatalogInfo;->filterType:Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getServerKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/data/CatalogInfo;->filterType:Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/data/CatalogInfo;->filterType:Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    invoke-static {v0}, Lcom/vkcoffee/android/data/CatalogInfo$FilterType;->access$000(Lcom/vkcoffee/android/data/CatalogInfo$FilterType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasGenreId()Z
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/vkcoffee/android/data/CatalogInfo;->genre_id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"genre_id\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/data/CatalogInfo;->genre_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", \"filterType\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/data/CatalogInfo;->filterType:Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/data/CatalogInfo;->filterType:Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/CatalogInfo$FilterType;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 86
    iget v0, p0, Lcom/vkcoffee/android/data/CatalogInfo;->genre_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Lcom/vkcoffee/android/data/CatalogInfo;->filterType:Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/data/CatalogInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget v0, p0, Lcom/vkcoffee/android/data/CatalogInfo;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/data/CatalogInfo;->filterType:Lcom/vkcoffee/android/data/CatalogInfo$FilterType;

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/CatalogInfo$FilterType;->ordinal()I

    move-result v0

    goto :goto_0
.end method
