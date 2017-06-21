.class public Lcom/vkcoffee/android/fragments/CitySelectFragment;
.super Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;
.source "CitySelectFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/CitySelectFragment$CityCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/DatabaseSearchFragment",
        "<",
        "Lcom/vkcoffee/android/data/database/City;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/DatabaseSearchFragment;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 3

    .prologue
    .line 12
    new-instance v0, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;-><init>()V

    .line 13
    .local v0, "adapter":Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/CitySelectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "country"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->setCountry(I)V

    .line 14
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/CitySelectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "show_none"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/database/CitiesAutocompleteAdapter;->setShowNone(Z)V

    .line 15
    return-object v0
.end method
