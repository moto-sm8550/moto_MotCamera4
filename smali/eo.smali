.class public final Leo;
.super Ljava/util/AbstractList;
.source "PG"

# interfaces
.implements Lcu;
.implements Ljava/util/RandomAccess;


# instance fields
.field public final a:Lcu;


# direct methods
.method public constructor <init>(Lcu;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Leo;->a:Lcu;

    return-void
.end method


# virtual methods
.method public final b(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object p0, p0, Leo;->a:Lcu;

    invoke-interface {p0, p1}, Lcu;->b(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Leo;->a:Lcu;

    invoke-interface {p0}, Lcu;->d()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lcu;
    .locals 0

    return-object p0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    iget-object p0, p0, Leo;->a:Lcu;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Leq;

    invoke-direct {v0, p0}, Leq;-><init>(Leo;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "index"
        }
    .end annotation

    new-instance v0, Len;

    invoke-direct {v0, p0, p1}, Len;-><init>(Leo;I)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Leo;->a:Lcu;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
