.class public final Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/AutocompleteFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzaPg:Z

.field private zzaPi:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;->zzaPg:Z

    iput v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;->zzaPi:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/location/places/AutocompleteFilter;
    .locals 4

    new-instance v0, Lcom/google/android/gms/location/places/AutocompleteFilter;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;->zzaPg:Z

    iget v3, p0, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;->zzaPi:I

    invoke-static {v3}, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzhK(I)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/location/places/AutocompleteFilter;-><init>(IZLjava/util/List;)V

    return-object v0
.end method

.method public setTypeFilter(I)Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;
    .locals 0
    .param p1, "typeFilter"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;->zzaPi:I

    return-object p0
.end method
