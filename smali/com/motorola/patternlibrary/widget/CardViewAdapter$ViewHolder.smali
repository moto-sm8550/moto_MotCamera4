.class public final Lcom/motorola/patternlibrary/widget/CardViewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CardViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/patternlibrary/widget/CardViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public motoCardView:Lcom/motorola/patternlibrary/api/MotoCardView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a00cc

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/motorola/patternlibrary/api/MotoCardView;

    iput-object p1, p0, Lcom/motorola/patternlibrary/widget/CardViewAdapter$ViewHolder;->motoCardView:Lcom/motorola/patternlibrary/api/MotoCardView;

    return-void
.end method
