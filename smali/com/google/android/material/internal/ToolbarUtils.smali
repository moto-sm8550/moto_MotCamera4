.class public final Lcom/google/android/material/internal/ToolbarUtils;
.super Ljava/lang/Object;
.source "ToolbarUtils.java"


# static fields
.field public static final VIEW_TOP_COMPARATOR:Lcom/google/android/material/internal/ToolbarUtils$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/material/internal/ToolbarUtils$1;

    invoke-direct {v0}, Lcom/google/android/material/internal/ToolbarUtils$1;-><init>()V

    sput-object v0, Lcom/google/android/material/internal/ToolbarUtils;->VIEW_TOP_COMPARATOR:Lcom/google/android/material/internal/ToolbarUtils$1;

    return-void
.end method

.method public static getTextViewsWithText(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/widget/Toolbar;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 5
    check-cast v2, Landroid/widget/TextView;

    .line 6
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
