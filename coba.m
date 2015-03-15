function e = coba(v, k, j)
    n=length(v);
    for t=1:n
        u=k;
        w=j;
        x=t;
        %t jadi baris
        if t<u
            u=t;
            t=k;
        end
        if t<w
            w=t;
            x=j;
        end
        temp=v((n-u/2)*(u-1)+t);
        v((n-u/2)*(u-1)+t)=v((n-w/2)*(w-1)+x);
        v((n-w/2)*(w-1)+x)=temp;
    end
end