.class public final Landroidx/core/widget/ListViewCompat$Api19Impl;
.super Ljava/lang/Object;
.source "ListViewCompat.java"


# direct methods
.method public static canScrollList(Landroid/widget/ListView;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result p0

    return p0
.end method

.method public static scrollListBy(Landroid/widget/ListView;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->scrollListBy(I)V

    return-void
.end method
