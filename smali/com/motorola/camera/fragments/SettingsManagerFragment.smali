.class public Lcom/motorola/camera/fragments/SettingsManagerFragment;
.super Landroidx/fragment/app/Fragment;
.source "SettingsManagerFragment.java"

# interfaces
.implements Lcom/motorola/camera/fragments/SettingDialogFragment$SettingDialogCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAdapter:Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

.field public mListView:Landroid/widget/ListView;

.field public mSearchView:Landroidx/appcompat/widget/SearchView;

.field public final mSettingChangeListener:Lcom/motorola/camera/fragments/SettingsManagerFragment$$ExternalSyntheticLambda0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/settings/SettingChangeListener<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/fragments/SettingsManagerFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fragments/SettingsManagerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fragments/SettingsManagerFragment;)V

    iput-object v0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment;->mSettingChangeListener:Lcom/motorola/camera/fragments/SettingsManagerFragment$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static getKeyViewType(Lcom/motorola/camera/settings/SettingsManager$Key;)I
    .locals 2

    .line 1
    const-class v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    const-class v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-class v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    const-class v0, Ljava/lang/Float;

    iget-object v1, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-class v0, Ljava/lang/Double;

    iget-object v1, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x3

    return p0

    .line 7
    :cond_3
    const-class v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x4

    return p0

    .line 8
    :cond_4
    const-class v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x5

    return p0

    .line 9
    :cond_5
    const-class v0, Landroid/util/Range;

    iget-object v1, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x7

    return p0

    .line 10
    :cond_6
    const-class v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x6

    return p0

    .line 11
    :cond_7
    const-class v0, Lcom/motorola/camera/VideoFormat;

    iget-object v1, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p0, 0x8

    return p0

    .line 12
    :cond_8
    const-class v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, 0x9

    return p0

    .line 13
    :cond_9
    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result p0

    if-eqz p0, :cond_a

    const/16 p0, 0xa

    return p0

    :cond_a
    const/16 p0, 0xb

    return p0

    :cond_b
    :goto_0
    const/4 p0, 0x2

    return p0

    :cond_c
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d00ed

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "data"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 3
    sget-object p3, Lcom/motorola/camera/fragments/SettingsManagerFragment$$ExternalSyntheticLambda1;->INSTANCE:Lcom/motorola/camera/fragments/SettingsManagerFragment$$ExternalSyntheticLambda1;

    invoke-static {p3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 4
    new-instance p3, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p3, v1, p2, p0}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/motorola/camera/fragments/SettingsManagerFragment;)V

    iput-object p3, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment;->mAdapter:Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    const p2, 0x7f0a036e

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment;->mListView:Landroid/widget/ListView;

    .line 6
    iget-object p3, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment;->mAdapter:Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "mcf"

    invoke-virtual {p2, p3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0a013c

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mcf_override_config"

    .line 10
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 11
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-> adb shell setprop log.tag.mcf.override.config D"

    .line 12
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const p2, 0x7f0a013e

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SearchView;

    iput-object p2, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment;->mSearchView:Landroidx/appcompat/widget/SearchView;

    .line 16
    new-instance p3, Lcom/motorola/camera/fragments/SettingsManagerFragment$1;

    invoke-direct {p3, p0}, Lcom/motorola/camera/fragments/SettingsManagerFragment$1;-><init>(Lcom/motorola/camera/fragments/SettingsManagerFragment;)V

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 17
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->LAST_DEBUG_UI_SETTING_SEARCH_QUERY:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 18
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 19
    iget-object p3, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 20
    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 21
    iget-object p3, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment;->mSearchView:Landroidx/appcompat/widget/SearchView;

    .line 22
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 23
    check-cast p2, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    invoke-virtual {p3, p2, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 24
    :cond_1
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE_DEBUG_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment;->mSettingChangeListener:Lcom/motorola/camera/fragments/SettingsManagerFragment$$ExternalSyntheticLambda0;

    invoke-static {p2, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE_DEBUG_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment;->mSettingChangeListener:Lcom/motorola/camera/fragments/SettingsManagerFragment$$ExternalSyntheticLambda0;

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void
.end method

.method public final onSetNewValue(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    const-class v0, Ljava/lang/Integer;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 3
    :cond_1
    const-class v0, Ljava/lang/Long;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 4
    :cond_2
    const-class v0, Ljava/lang/Float;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    if-eqz p2, :cond_4

    .line 5
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 6
    :cond_4
    const-class v0, Ljava/lang/Double;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_0

    .line 7
    :cond_5
    const-class v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8
    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 9
    :cond_6
    const-class v0, Landroid/util/Size;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10
    invoke-static {p2}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 11
    :cond_7
    const-class v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 12
    invoke-virtual {p0, p2}, Lcom/motorola/camera/fragments/SettingsManagerFragment;->parseRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 13
    :cond_8
    const-class v0, Landroid/graphics/Point;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 14
    invoke-virtual {p0, p2}, Lcom/motorola/camera/fragments/SettingsManagerFragment;->parsePoint(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 15
    :cond_9
    const-class v0, Landroid/util/Range;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 16
    invoke-virtual {p0, p2}, Lcom/motorola/camera/fragments/SettingsManagerFragment;->parseRange(Ljava/lang/String;)Landroid/util/Range;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 17
    :cond_a
    const-class v0, Lcom/motorola/camera/VideoFormat;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 18
    invoke-virtual {p0, p2}, Lcom/motorola/camera/fragments/SettingsManagerFragment;->parseVideoFormat(Ljava/lang/String;)Lcom/motorola/camera/VideoFormat;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_4

    .line 19
    :cond_b
    const-class v0, [Ljava/lang/String;

    iget-object v1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 20
    invoke-static {p2}, Lcom/motorola/camera/fragments/ArraySettingDialogFragment;->getListFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 21
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_4

    .line 22
    :cond_c
    iget-object v0, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 23
    iget-object v0, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-static {v0, p2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_4

    .line 24
    :cond_d
    :goto_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_4

    .line 25
    :cond_e
    :goto_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_4

    .line 26
    :cond_f
    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_4

    .line 27
    :cond_10
    :goto_3
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 28
    :cond_11
    :goto_4
    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment;->mAdapter:Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    if-eqz p0, :cond_12

    .line 29
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_12
    return-void
.end method

.method public final parsePoint(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fragments/SettingsManagerFragment;->parseValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 3
    new-instance p1, Landroid/graphics/Point;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final parseRange(Ljava/lang/String;)Landroid/util/Range;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fragments/SettingsManagerFragment;->parseValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 3
    new-instance p1, Landroid/util/Range;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Comparable;

    invoke-direct {p1, v0, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final parseRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fragments/SettingsManagerFragment;->parseValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final parseValues(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "\\d+"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final parseVideoFormat(Ljava/lang/String;)Lcom/motorola/camera/VideoFormat;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fragments/SettingsManagerFragment;->parseValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    .line 3
    new-instance p1, Lcom/motorola/camera/VideoFormat;

    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    new-instance v2, Landroid/util/Range;

    const/4 v3, 0x2

    .line 4
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-direct {v2, v3, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 5
    invoke-direct {p1, v0, v2, v1}, Lcom/motorola/camera/VideoFormat;-><init>(Landroid/util/Size;Landroid/util/Range;Z)V

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    .line 7
    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsHelper;->isHevcSupported(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    iput-boolean p0, p1, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final showSettingDialog(Ljava/lang/String;Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 2
    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v1, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string/jumbo v2, "setting-dialog"

    .line 4
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 6
    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack()Landroidx/fragment/app/FragmentTransaction;

    .line 7
    iget-object v0, p2, Lcom/motorola/camera/settings/SettingsManager$Key;->mType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const-string v3, "SettingDialogFragment.KEY"

    const-string v4, "SettingDialogFragment.TITLE"

    const/4 v5, 0x2

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lcom/motorola/camera/fragments/ArraySettingDialogFragment;

    invoke-direct {v0}, Lcom/motorola/camera/fragments/ArraySettingDialogFragment;-><init>()V

    .line 9
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 10
    invoke-virtual {v6, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v6, v3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 12
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Lcom/motorola/camera/fragments/SettingDialogFragment;

    invoke-direct {v0}, Lcom/motorola/camera/fragments/SettingDialogFragment;-><init>()V

    .line 14
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 15
    invoke-virtual {v6, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v6, v3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 17
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :goto_0
    const/4 p1, -0x1

    .line 18
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    const/4 p0, 0x0

    .line 19
    iput-boolean p0, v0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, v0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    .line 21
    invoke-virtual {v1, p0, v0, v2, p1}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 22
    iput-boolean p0, v0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    .line 23
    invoke-virtual {v1, p0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    move-result p0

    .line 24
    iput p0, v0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    return-void
.end method
