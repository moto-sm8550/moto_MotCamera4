.class public final Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$1;
.super Landroid/widget/Filter;
.source "SettingsManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$1;->this$0:Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$1;->this$0:Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    .line 5
    iget-object v2, v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mOriginalData:Ljava/util/ArrayList;

    goto/16 :goto_7

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$1;->this$0:Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    .line 7
    iget-object v0, v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mOriginalData:Ljava/util/ArrayList;

    const-string v3, "choices"

    .line 8
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 11
    move-object v5, v4

    check-cast v5, Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 12
    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 13
    invoke-static {v5, v1}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 14
    new-instance v5, Lcom/motorola/camera/utility/search/BoundExtractedResult;

    const/4 v6, -0x1

    invoke-direct {v5, v4, v6}, Lcom/motorola/camera/utility/search/BoundExtractedResult;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    new-array v8, v6, [[Ljava/lang/Integer;

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v10, v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v7

    new-array v12, v11, [Ljava/lang/Integer;

    move v13, v9

    :goto_2
    if-ge v13, v11, :cond_3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    aput-object v12, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v7, v6, :cond_7

    move v10, v7

    .line 17
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v7, v11, :cond_6

    move v12, v7

    :goto_4
    add-int/lit8 v13, v10, -0x1

    .line 18
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    add-int/lit8 v15, v12, -0x1

    invoke-virtual {v5, v15}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v14, v9, :cond_5

    .line 19
    aget-object v9, v8, v10

    aget-object v13, v8, v13

    aget-object v13, v13, v15

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v13, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v12

    goto :goto_5

    .line 20
    :cond_5
    aget-object v9, v8, v10

    aget-object v13, v8, v13

    aget-object v13, v13, v12

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v14, v8, v10

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Integer;->max(II)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v12

    :goto_5
    if-eq v12, v11, :cond_6

    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x0

    goto :goto_4

    :cond_6
    if-eq v10, v6, :cond_7

    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x0

    goto :goto_3

    .line 21
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    aget-object v6, v8, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    aget-object v5, v6, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 23
    new-instance v5, Lcom/motorola/camera/utility/search/BoundExtractedResult;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lcom/motorola/camera/utility/search/BoundExtractedResult;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 24
    :cond_8
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/utility/search/BoundExtractedResult;

    .line 26
    iget-object v1, v1, Lcom/motorola/camera/utility/search/BoundExtractedResult;->referent:Ljava/lang/Object;

    .line 27
    check-cast v1, Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 28
    :cond_9
    :goto_7
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 29
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v0
.end method

.method public final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$1;->this$0:Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$1;->this$0:Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method
