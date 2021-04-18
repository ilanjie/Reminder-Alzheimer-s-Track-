import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/painting.dart';



void main() {
  runApp(TabBarDemo());
  
}
String randPic(int temp){
    List<String> images = [];
        images.add('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg');
        images.add('https://upload.wikimedia.org/wikipedia/commons/6/6a/Holstein_Friesian_UK_Yorkshire_July_2011.jpg');
        images.add('data:image/jpeg;base64,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');
        images.add('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgVFhUYGRgZGBgaGBgZGhIYGBgYGRkaGRgcGBgcIS4lHB4rHxgYJjgmKy8xNTU1GiQ7QDszPy40NTEBDAwMEA8QHhISHDQkISE0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIAKgBLAMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAEBQIDBgABB//EAEAQAAIBAgQDBgMGBAUCBwAAAAECEQADBBIhMQVBUQYTImFxgTKRoRRCUrHR8BZicsEHFSMzROHxNENTZIKisv/EABkBAAMBAQEAAAAAAAAAAAAAAAABAgMEBf/EACERAQEBAQADAQEAAwEBAAAAAAABEQISITEDQRNRYYEi/9oADAMBAAIRAxEAPwD5UiV4yVJXrzNWPtCVu3VhSqw9eG5SstCyK9FuoK9Wq9K7A4W6g6UQW0od2pc6EQKIQUIra1epquoBSirkahLT0ShrLqHi1zpQj25p7isEiN3bTmCqSfNlDRHlNUXuGuBmTxDy3+VV4dczRhN3NEW7Arx2rxb0VFtpL2tChL1qiRfmoO4o5tgAOsVJLtWXVmqO7rXZZ7VKvF4U1wFyaSRTLht/dflWf6czFS+zZzSnHWAwPWjHu0FiblZcSy+lUmLVNHrlsM7HKpOvIUwucKZLTXCR4WVSPNgSIPP4TXZZ61nQYerUqtEq9ErPr0lWyV4LdFraqRtVHmoKEqJFFRVTjWnOhEbGKZDpTROLmNqU5KMsYWRU9zm+6vb/AAdhnztNaThVrMRSTA4bLr0rRcLMGa4urLfTXjmmmIw6xEVj8fw85zG1bq4Aw0pFiLBzVWYqzXyjPXmevK4CvWxyrQ9eE1CuNGBYHqxblD16tKwYMV5r3LNUpRuGWsuvRVSMOakbZpiAKruqKidWiAQlEYZ4ZZEiRIqomuJqr7Nv+1nDMyJibeqlVDgcgAMp02pNwvFww19q2nYvGJcwYVobKCCpiCP6edIuNdkmzZ8MZB17tiQw12SfiAn1HnW8vpUdi+BW8SpZCLdwc/ut/UP71h+IYK5ZcpcUqw+RHUHmK0eCx1xH7twV/q0IESN9Y/Y6VqBj7WT/AFXV5Giwjb7ROsUrzKLHy5HqZNbrF8KwAdoVxoSQHACmdgOVUWuBYdlUhHlo2b4Z2mRHOo/xdX4mslZsFqubCeVahOF4fMyK7DIBr4TJPIddKuThVsANmcqTB0A1G49ax6/H9t9Q5jEXcKRrVaIRW9PB7LvkzspidlafrXJ2fwhAY3mg+KIABGuhO42PKqn5/p86gz/TEreYmIJPIDc07tdn8oD4lsoiQgPjP9R+76b02vY3DYb/AGba5z94yxA02Y7DypE167ibgRQzM3Lb1J6Addq05/OT6aetxxZsoFB2VdB5lj/c077S8MWxgVtgEsWzs3h1YbmCZjzFaDs1wRLAgsGcxnYghTzyq3QfWs7/AIoYpQyIpHUiIYEaa9R0NX18KsLbSiUFU2DNGomlc3fWJx6hqcVE153mtZGk1uqGt0fGlD3EpTpUiFm3TvC4QEUptGnGDvxWP69VXP0baw0CrsM2ViK5Lwihbl/XSsua2lxpcLdqvEXVzbUqwuM61e98EzVeVVr5KFq5Ldci0bbSvW66xxUKbNQa3TQJVFxKmdlpaVrhRDpUe7rTyPUFajbF2hSleppU9SUzPvK8a5NBhzXqGs/FIpUqDpVloaVMpU6pquw2ObN3Jy5FBYl5OvKOUCvoLot9CsRGzagzyI5ivjGGdg3hYp5jyr6JwTF20toWvklnHhlmJgeIsTJAG5Nacfp/KqSu4pbc+F0DOp0bTMCZyqpaDB001G9KrGAL5STbKJJEI2acpAEAeXXcVvsfxGwEBc5s7Kq5ddWMAClKi25ZFUIF1ckJESARr7+la0yE8LRcPcKoxuFQFAzknU6lCdGAVtvrNecNsrdw6IoKvYMsx0UvcBZ2JPNdNeUdNaeYrGgI7IVHdrEtObYgHMSI8KkyefXmq4Jx0OYurBum4oaIBACzI5kExB/DGlVKkpQZbfeoQZs33LwArXs3eQNJKqoC7fhFM7NwYUC44Bt/aLmTKQ6st1GYNH8rED0mhzjba2EUSuSw6LpsQFC6Hc5UMnberO0XFAgSxZUDJ47gUA5ggCvB6jSDvt715Fj3hGHlrr3iwdge6jaWJUZWGxzRoetLuNcJHhVe8yjNnKlSC2VgTsDueQ58iTTvhXFEdcxXVYbwlFgKpWWWek785qHesq5jkvWjDQ2jg5YPi2nbkPmKi05GVThdqc9y8wUFfB4CzaaJP3BpEwfSa2XZXCplZ0TIrEwoMs6giC7NqTvzjpUcBwrB34yuVfcKc0knU6wCJ0kfTWm64R7JQAEqCNQcp9SBuKn2qSLMQXs22vIuYCSyEopjmQ3X3r492h4l9pvG4JjkCACPUDSfTTyFajtP2qLPcsoCkErnzsyuoP4SIHT5isdZtSZqO+8RXli1R9s1O3YqxbVcnXWngS9VNtDNHG3NSGHiKXlkOR6qQKquNRLppS/FPFRxPKtb6gcYiDRuFxgmkTvqa63eg109fhOoylxrUxQI3qFy5rIpCmKNE/adN6w/wXmrvRkuMioPxTXnQKtIqpxrT/xz+l5UGlur88VWxqp2rr+sxHfaVBnmhM1eZqPEsFAVaEoZHohHo6gxHu6g1uilarVtzWd6wgSpUgtGNbAqCW5NLz0/ry0/KnWD4LduiVQx1pr2a4CjRcdfCNgedbexiUUQigKK15/Ly905HzTE8Cu2z4k+VOez/DAGzuJgT1E8q0vEcWrjLFCYZ0RGd2yawCdNv2a0n48y6vyvxM4ZVQ3IB8fgBJChucAHymr8dgmSwcoaSMxgnNI1AgAyBPlNIgcRiCptXRbQEquZZz6+J9xz0360e3B2W7hUxN1ntut3NBdFa6ACiQp00k67kVQ0Dlf7NiFbxNldllT4p3iRqPDt/L5xSbCYc3MFhnUnOL7agSSrSGAB6gDl7dXXFOHG3dK4YOgATwu5dHLlw4CESpAVZIPOh7vDsuH7y34RbdrdxBJCOdGIHvPv50rf4J7VmzbF6VX/AE5OVQDCldT6r4jr/LV3D7WZsVcuHVrWUE5TARJLwNIJUn660FceASRBiDrtHiGXXXePf5h4dbhFy4zRaRSGjaCDI+Rii0DOzFzJgnuMoJd8o2l2UEkCd4ifLLtTfgOHu3FfM5zHcAeuokAjYaxyArMYPF3u5JWbdpFlEVEdmXWTmcwo66Emfk6w74mxcsJbcs7lg6OEZCYLKVIGZdB1pbKILu8NOcIF8QykEEAggxGadRv/AHnQ1HHPduOhLFVSVfXUGMpkdOdCntDcRwb9m4gLeIjIQJO4GpA3janyIrO+xBMERyIlY9vqaMGvlOMBW44LFoYjMZJMHmaMwTiquOYYpfdOjH1qOGaKx/TnUw6G1eC5Q64jShruIrnnGqoxGE0YpEUlTE0XaxNR1xRKMvkRSTHPRt67S2/T/LnKfXRddqkmiHWhnFehyhNLhom3coIURaosgMkfSvJqpDXZ6yvJxXNDu1E3FgUI5quUR5NeV5NdVmkGqxLlU1JRRYB1l6OVqUI8UdbfSsO+Rgt9qZ9lcGLl4BthqfOkRuVtuwWF+JzT/Pj37GNPiWHwIIih2ZsmnL0ivMRehjAoXA3GYtOwrrMXhsIG8bn0GprzC8LtXmfOM2QghSfn4S2371q7OxTMRHSljLcV8yEBhoSRpDciaXVOQ+x/Dj3ahIlPEAq7Hy11/vrWTHFL6qbVy0XSQcjBlIg6MrDVGEjbpRL4hg/+redCNiugB6mDB8qJxXDRe8Rvl511S2GA8iBJ9KjTwPhuMq4jv7yGIl0suRyhXj6sKTdnOIMDdwwVmR2Nx3YnRpj3LQvTaivsRd8iKZnRSDmXQRJPLlr09wTb4aMPdRyyhQrMxzHWSCdOfITRRytbg5ZtdpmNdz0+VIOM8RKI2DCeFzJccxOgHPeK2SdosOIl1AO2uxPlWbPC2v4i4RGsFDm+ITIgctJ9aX9P+eh2GyYawiPdVyAIXu3d1MbMVYA9OU12G4/aRy4R3fKQHcKqqCRIRBO/WSdN6X3iUco5ySIMAyTrpGuk6/8Ax86rw1plJIUHfLKu2eOZYEZf6TvAjaj4X06sE4l5fwoZJQAnMpnfWQNfL3oHhWNW3c7l8yxIRyDDAERrry8/zphwrjcBrbWigKsS8Fcx26CPKase5YyZmksSAEBGvRhO1ENhO1DhsQ7AbnzpWGp72gwyM5yOAfwOMhPoxJUn1IpE4KnKwII5EQaz6+s5XvfGq3uV4ziqWNKQ7Uw5oi3eoVamDR1zpDGuVWdarU1YtR44FDpQ9xKYZJqu5hq056BaFom0ld3cVfbSq66DxjVc1fctkb0PFTLo0RiKXtvRmINAmq5noo9Fe5a8WrBV00ctTVakBU1FRaWohKvtdK9iuFRbo1alokgV9N4HbCWY20rHdnMLmJZhoK2NlvDA5jStvz5yaqBcTiTlZhz0FXcORlTXc60LiLfjRGaNZgCSabJdTNlgkjbUAflWgXC9pBgV1hVVszAtmkEbDy01mvXuJnVMoJY+befMx+dF37rKVVT4jyWCQB7ZV03MEj60r8OAcVZYDL3QcbAOfEoPNvFIG2gE0XhMKBEgEaSFFxhO/hk7UNevqgJYKZ1nMfCfN5//ADFRwV+4WD5sqD4hMg9Av4j5+R3is9mqx7jMIUcslrFeJhqpshOeuQ8tQdeg9zbvDkxNjI4uW7gUqLjBVfxAFtF0gwJHlRV9EvIHRVzgQpbNrtrodvP5daRcVwl1EAW1MCAysQupnYk84PlGlOwSsLbs3bt/7GC6urZXYqCEy/Gx8uh5yK2163ZwloIgc3HBPed3ceWUKozBIgajTQaVk2wOKS49xk+JQGUF1MDNlGYTTLC964yqtwAQRLuBtEEgjTeR1qbJPh+Vt9ib2E+0OHZ3B1WXwtzIIAEFpmM2skn9VfFEcuVNwKAIBIuKCB0LwI961nDsKLalmnNlg5rlw6f1Fo6a/lzz2JuIzsllnRwfFbaSZ5gIfjHzbop3oTVOF4RcZcz4hXT7oBgt5K5MGfIn3orC8Pa2e8IFsH4REHynMNefKvcAltBmdcjZoLW84Rj5gTl/pIn0plib4CrroSBILKrf05cyHf16xQbJ9rcNlytlIzCf3pWX+0GMraqNp3X+k8vTavp3a3C95YBVUYrsPhYSORQ5fnXy3FWWQwylfXY+h2NOxlZ7Qf5jrXA1VUkGtLBghFq3ujU8OtGpbmseusqpzpeqGr1t0WbdVlai96q8q7WleOa4tFVO1VyMRdJNaThXDFCgkams/hjLitfhn8I9Kj9bfiueZS3i+CEaVmstbbHpKGayL29T60vz6yF1z7D3KEZaIeqGNdPLNALUxU1FeEVWh016rV4RUTRgwQrVNTQyNReGSWAqcS2vBLRFqY3p3hmVUnoKWcPlbQFWuW7sjzrefFz4H73Ndz7kU6w6QM7aTz3PsOdKbSC2RrLNHKR7Lz94HrTW67bLvEkk6x68vamBCXdSSMg2/nM9T936e9e374SECjJyg899Tz/eleLZmy6qZhAw0853qnhtwPazbvGgM8tm15VPRxaqBUzMuv3bY3O25n9z7UJiMW2mqlCSAumUmNUHRQNSdzEbUtXFPadg8szEl2kBUHkTptv8t5oplF+RsjAdCIBHwn11k9KinqnD8UfO9x27sL4VXTxdOfxa7edPcB2oQqveaA/CNxB+Ez1O/pHWs1g8HLlLplwGKISNUA3JOpJnegb3CndmPwkfCnLSBvsdB6aUtsPGzxfGLBJbMsESdRsKRY7tIiB1twQDy5SN/MVnkw+fMCsZRAPlAkHykMKBwtmXdfhYCIY78o84MadKNB1/mrXCA75Y2A2I8xMztt0PWoLxBbn+nHiAhXIUbaQY5Dp8uS0oXDkOQVMfhmSp3g9V05dRRlhFDxMGJMjxHQeHLy/vSIxsO+eLjEsCQSIzctGUmHWI0OvRhTrBYUhxkOa2SWcDxAHl4SNBy1E+uhpZbxQIEeIx4I3I0EEk7jrrpOugpnhh9nQtJznVoM7+u4FOG7jVlrlt8uhzaLIg/wBJ6+R+ZrAXnuoSM7DkVJJGnIq2lfRMZcV8MABlLNMRC/8Aafl9axuPGuW5y0Dj4lHKfxr+weVLu4i/SK45O6p7Ig/IUOBR2Jw5XoQdmGoPp+m4qpMKTrUeXr2S3DGmNsaUJbwvSrVuEaGse5t9KlwQapddK7vKruPNROad6D3EmoCyaJUVai1flYkFbXKwPStLgsYuUTSVrc0VYsQKnq+UXzaN4hi8wyjagEw+lFOo0PzqJuCsvf8AFWM1foUmi71CkV38/GK1akVqNuryNKLUqGFeNVpSqnFOVSKGmvCrJZwfOlAFPeBr4wCY186dhVvrGFLIIERVL2epp5w+wCmh5UtZdWHStZ8UTG5NyBqF500s4otmgaxA2NKbKeNgD8VNOGWQGAMknWPKmGh4VbIXxjQghpAG+w0rH8YD4K8145mV2gAbL59BA0EefQTtL5KgL1+Q96C4jZXEWsjx5+XSp6OMy+It4i3mAysQIUkbzO0aAkb/AMtJ8O160x0lNhBGUcvAvM+tdxvs49om5aYx+GYOgjQAzED6Uv4bx1k8LCSTsYEcyQY2/Oaga2WEdXc3FHj0V518OxE8o1MDnR2ItAy6gkZSQZmDPT32pRw3FWnbcrIGaI1HUyYGmppvxLiKBCUywkAchEg6eZzCnh6GwnCWOYgAiNAeRG09ZlqXYjhIT4wM6sfFzYvMEnly9JFXYfir2izOBBjntJgDTSNW+VAY7FO4bKxhiWzE/AY8IPpA+VLJg0OHKEgxuIVYUs2vin3B+fShbvEE+GM2bT4Qcr9TG412n9KHuWLrCDAAgHUSZ19t96mmKtWYkAzyBGvXxaxy0NLBplwLCorh7pIJlgTMFeZWfSmGKZrtxUtvnQnUgAxMTmHLSkJ4g+IYW0tldCQUzHTmY5baxWw7PYBcLbNxj4yNBEnzFPBqfG7MBFTRUAHud/2ayHFbcHU6cv5fTqvlyreuEdC+xOvv5+VY/tJhCpB0IImRU/pP/kmZJM5eR3HL1/60RQ53q5WmueiCbVUYlvFXrXQBvQTXpM0uYdXM1QBqo3K9mqxAlHqbOKDSak01N59jRdm74gKNe5pSdDrRb4gRU3n2vnp2IxEDeh/tNCYq5NDzW3P5zDvSLPXgFEDAv+E1anD3/DW3xmHRaJQVenDn/DVgwD/hqOvaQzrpQtxaZNgH/DVD4J/w0cnC/LTzgCAuuY6TQH2F/wANMuG4Z1YeA1eivrfC0UJ4elZ3iL5Haec0/wCz2Y2wGWNKXccs7nLNbKjMYRGZoUST+Va3AYZyMwKgp1E7Vn8MWQ6DUiIG9aROKpbtgNmLR8IE6+1MIYniYZcumbpzmdxS7D4l1MO06lhEwo8zUb1xHJd1a355vER/alrYpHQtbVyswWJIBjn56mopw+a+ChYga6BokEGdvLyrN4/gtm4S0TvAEAb6kkfvSjV4oUAHdkJlJOYzpsYAGpM0LhOM2nzPDI2UgIVmRqdAv3qg/RHiez11CzWnDAgneI65R05TXuGa/bthHTMHIYefIiOX3da2Fu4HUZEO40YZZ9jBjUa1RjMJfCg5GAkksqzlUNtHU6UFjMYlzuiuT4dtQMuY7e6n1NLw2Ij4GIME76ECBHsx+laBHCIASJU5QNczuFkfvz8qbYZy5yIpOgltAIyL/cR70DGWs8OxDt4iEXRTDeLL5eYJU+1F2uzKK57wlljUgEeLrI9vnWmvcOvnVUHMmNjJIA26a7Uh4jhcQgztZLKDqwuPpyOoAjWRzNA9G1m/Zw4ACroARA1AjQkjXbn5e1S797zBwJUbgk+sqazeDvYgEhFGVDIDDMQDzD6HeiE4i+cd4Sh6aD3U86NNtLTW1QgiQ2kcz5A0n7TYTQLtCyB0HKr8E+GkOWztOhJ2/SmPGriMhKkTl3MTTvuFXyy+kGg4NMMcxLa/2/tQbGub4i1Sxryrck141unsE1WTXqPQ7mvUaq8TGq9eO9VKa8ZqnxLFmaou1V1B2qpypF2qE145qNaSB9iTg1rotXLwm0OS1nxwHGA/+JUD+hv1qY4Bid3xigHbwN+tbZ/xX/jQLwm10X6V7/l1oH7v0pSOzGIP/LMeVs/rXn8K3Tvin9lX9aWf8Ho6Th1n+X6VL/KbR/D9KTW+ytwf8i6R6JRKdmnH/Iuj2T9Kef8AAaLwaz0X6VanCrQ2j6UqPBmH/n3Pp+lePwX/ANxcHuKMGNRhVUCARVPEMMGBNIsNgMmvfOfU0Z9vjw5xPQ7/ACpjKQM4S9BHI77CpCyC5uu2ZR8KSYn0ojH8O77WYnmNKVXuBXwS2eREAajSkMpZx3FNehZCqz5dNwo3k0Xw7iKJnQQERQBv8Wo0P1pfieE4gaBQRJI1Eyefp5UPY4RcVgrIxDEF2g9eQFThZf8ARjisf4VVAXdyQoj7s+HblpqaccLwGQKMuYqC7HKZZzJgVHhdpRfllYKEVUORuuomIHKml3tBZS8yGZiM0EgTHMUYBxdDhiyAsrIyncEyCPEdxBnTlrSngnaJmAR0zui5XEQ7xpmEwCCIPTWhF4iqMFRWdHdpADtlYiQx0+Ekan0pRxm8xdHtWrmdHBzJbuaiCGBhdtvn6Ugd9ocKptMR8SsblpwNchglG81Jbb7sUVheJJbtKiCXdT8OVZaBmafUge9ZfinF8VcDImGvZSzEN3V3UMonTLpBLfSli/bMqL9mxAykknur3MiATl2inhPotzi/d5LFtczKis7k6KpMbmSzGGMfy7iquz3FTduXCVXI4EnQBnAIZgu2vPr9TlsE1/vrly5hrq5kVEHdsCcgPNgInMTPpTDgt25ZtBBhnETrNvltMnp+VKw47jqm345GW4txRAOhRvAR7FeXKsxxPEF0WQC6somPL5g1p8ZavX0S2loZUEgtctAgtz0bQHX5Up/hDGlsxS3HncXfkTFLP6LvxZgMMbltgTDp96crbTBjenfAbD3LWViWMxLASBS/CdnMSvx3bSzvBZiR0Om1bThFpbaBRlOmpGY/2pyHhb/C6HUrJ9KHudmU5J9BWuGIUbkfJv0qf2pOR/8AqaPDkemPXs2PwD5Cq73ZZW+5+VbRuIINZPy19qrPEU/mB5TlH5nyo8ORr59f7CZjosV1r/D7yNb7/N0IMGSNxNufXeqhx5JKyZ6DWjx5NiG7AHofnQ1zsIwOgNb5+PqI8LHyGSfqarftAnkN9yJml48kwH8C3Cd4rn/w/f8AFW5bjimdCI5nQk9AKHu9pkA5n0G2416bUTnmDGKP+Htzr+dd/AL9fzraJ2ilQToT5yB7xVX8RAaEmarORiuxx1WA/wBz2JEHzjcVxxwOhLmNf925+omurqNpoPxRx8NrMukE3Lh+hNLsR2mvJthg0bw0n8pNdXUbQHtds0VvHhypOp8THUTtJgekVy9tgWCphlk6an9Jrq6l5XFZBeK7V3UIU27Ux4QuYxPlzFB/xniG0VLSkGDCknTykV1dRtGKrna2+xhrltdiJt7Hcaawanh+1WKkBrgYdAttZ9wJrq6jaimKdp7hAIGZjuJU6DfYGDUk7RkkklxHLMmXT2rq6ltVnpDC8fyiHdyTOsLGnI0X/EadWIjSNdtDIrq6iWjFR4wrsMl24QdTqqjyAlQY86Ls4t2XMhuNGw7wCY88nrzrq6ntJR9ovFoZLgJ/nYD2y6VC9irg3RwDpma4fzzAiva6gL8PiHAKqr5uueRp1Jn86vKXYILgMAInUHTUzlMGurqcFQTFdHRiJ/nO+v3dPaqsRdV38caeHZtORDHXTUV5XUjiq0vVmCJsAXVfMqANoA9aF7zxMc7MqxC5mB8XLMRJ/wCldXVNoSXE3RPhVlG2ZmnqDLDf/vFX4Tit0FsyIAerXNImZMRt/aurqW+zkEpxe4qQokGfxuT6MW09Ksw/FQ3xW2A0hibes7wA0711dT2pENirceJBBjUos7wJWCd41rmUCSqIOZII9dSK9rqomW4hi37xsqsoggkd3nM9CSQR+/OlY4piEcwWeNNVQAjz3EweRrq6pNycacE5xvuRDETyjT5TV/8AnGuqmIiYUEeZGs11dSOA8RxZ1krlKzGuc/PpVH+c3lhsqENrEnUfORXtdTKuXj5g/wCkv5yfWJnahRjk/wDSfXX41H0ivK6gn//Z');
        images.add('https://i.insider.com/5484d9d1eab8ea3017b17e29?width=600&format=jpeg&auto=webp');
        images.add('https://www.sciencenewsforstudents.org/wp-content/uploads/2020/04/1030_LL_trees-1028x579.png');  
        images.add('https://media.istockphoto.com/photos/tree-picture-id543052538?k=6&m=543052538&s=612x612&w=0&h=YP7fBhjDe1dQGpj00Bu4ywsCjTljdW7dB_HKjp7_DDU=');
        images.add('https://images.unsplash.com/photo-1484557985045-edf25e08da73?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hlZXB8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'); 
    return images[temp];
  }



class _customMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
  
  final maxHeight;
  final maxWidth;
  _customMultiChildLayoutDelegate({this.maxHeight, this.maxWidth});

  @override
  void performLayout(Size size) {
      if (hasChild(1)) {
        layoutChild(1, BoxConstraints(maxWidth: maxWidth, maxHeight: maxHeight));
        // Center of the box
        double dx = ((size.width / 2) - (maxWidth / 2));
        double dy = ((size.height / 2) - (maxHeight / 2));
        positionChild(1, Offset(dx, dy));
      }
      if (hasChild(2)) {
        layoutChild(2, BoxConstraints(maxWidth: maxWidth, maxHeight: maxHeight));
        //Top left of the box
        double dx = -(maxWidth/2);
        double dy = -((maxHeight / 2));
        positionChild(2, Offset(dx, dy));
      }
    if (hasChild(3)) {
      layoutChild(3, BoxConstraints(maxWidth: maxWidth, maxHeight: maxHeight));
      // Top right of the box
      double dx = 50;
      double dy = 70;
      positionChild(3, Offset(dx, dy));
    }
    if (hasChild(4)) {
      layoutChild(4, BoxConstraints(maxWidth: maxWidth, maxHeight: maxHeight));
      // bottom right of the box
      double dx = 50;
      double dy = ((maxHeight * 2) + (maxHeight / 2));
      positionChild(4, Offset(dx, dy));
    }
    if (hasChild(5)) {
      layoutChild(5, BoxConstraints(maxWidth: maxWidth, maxHeight: maxHeight));
      //bottom left of the box
      double dx = 50;
      double dy = 150;
      positionChild(5, Offset(dx, dy));
    }
  }

  @override
  bool shouldRelayout(_customMultiChildLayoutDelegate oldDelegate) {
    return (maxHeight != oldDelegate.maxHeight || maxWidth != oldDelegate.maxWidth);
  }

}


class TabBarDemo extends StatelessWidget {
  int tapCount = 0;
  double width = 80.0;
  double height = 80.0;
  double maxHeight = 230;
  double maxWidth = 320;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.memory)),
                Tab(icon: Icon(Icons.track_changes)),
                Tab(icon: Icon(Icons.trending_up)),
              ],
            ),
            title: Text('Reminder'),
          ),
          body: TabBarView(
            children: [
              Center
              (
               child: Container(
                 child: CustomMultiChildLayout(
                
                  delegate: _customMultiChildLayoutDelegate(maxHeight: maxHeight, maxWidth: maxWidth),
                  children: <Widget>[
                  LayoutId(id:1, child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 4,
          // Generate 100 widgets that display their index in the List.
          
          children: List.generate(16, (index) {
            List<int> num = [0, 1, 2, 3, 4, 5, 6, 7]; 
            int repeat = 0; 
            List<int> used = [];
            var r = new Random();
            int temp = r.nextInt(num.length);
            for (int i= 0; i<used.length; i++) {
              if(used[i] == temp) {
                i = 0;
                r = new Random();
                temp = r.nextInt(num.length);

              }
              else if (used.length == i && used[i] != temp) {
                used.add(temp);
              }
            }
            if (num.isEmpty && repeat == 0) {
              used.clear();
              repeat = 1;
            }
            return GestureDetector(
              onTap:() {
             },
              child: Container(
              child:FlipCard(
                direction: FlipDirection.VERTICAL,

                back: Image(
                  image: NetworkImage(randPic(temp)),
                  height: 80,
                  width: 80,
                ),
                front: Text (
                  "Recall",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,

                  ),
                  
                  
                )
              ),    
            ),
          
            );
          }
          ),
        ),

       
              ),
              LayoutId(
                id:4,
                child: new Counter3(),
                ),
                LayoutId(
                id:5,
                child: new Counter2(),
              
                ),
                   LayoutId(
                id:3,
                child: new Counter(),
              
                ),
            ],
          ),
         ),
        ),
              Icon(Icons.track_changes),
              Icon(Icons.trending_up),
            ],

          ),
        ),
      ),
      
    );
  }
}

class Counter extends StatefulWidget {
  int _counter = 0;
  @override
  _CounterState createState() => new _CounterState();
}

class _CounterState extends State<Counter> {
  void _increment() {
    setState(() {
      widget._counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new RaisedButton(
          onPressed: _increment,
          child: new Text('Right:'),
        ),
        new Text('${widget._counter}'),
      ],
    );
  }
}

////
class Counter2 extends StatefulWidget {
  int _counter2 = 0;
  @override
  _CounterState2 createState() => new _CounterState2();
}

class _CounterState2 extends State<Counter2> {
  void _increment() {
    setState(() {
      widget._counter2++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new RaisedButton(
          onPressed: _increment,
          child: new Text('Wrong:'),
        ),
        new Text('${widget._counter2}'),
      ],
    );
  }
}

///
class Counter3 extends StatefulWidget {
  int _counter3 = 0;
  @override
  _CounterState3 createState() => new _CounterState3();
}

class _CounterState3 extends State<Counter3> {
  void _increment() {
    setState(() {
      widget._counter3++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new RaisedButton(
          onPressed: _increment,
          child: new Text('Finished:'),
        ),
        new Text('${widget._counter3}'),
      ],
    );
  }
}




