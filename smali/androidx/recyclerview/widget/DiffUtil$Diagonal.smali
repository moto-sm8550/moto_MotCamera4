.class public final Landroidx/recyclerview/widget/DiffUtil$Diagonal;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Diagonal"
.end annotation


# instance fields
.field public final size:I

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 3
    iput p2, p0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 4
    iput p3, p0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    return-void
.end method
